$Global:Connection = $null
Function Validate-ODBCDriver($Server, $DB)
{
    if([Bool](Get-OdbcDsn -Name "$DB" -DsnType "System" -Platform "64-bit" -EA Ignore))
    {
        Write-Verbose -Message "ValidateODBCDriver: Driver Found & Healthy" -Verbose
        Return $true
    }
    else
    {
        Write-Warning -Message "ValidateODBCDriver: Driver Not Found" -Verbose
        Add-OdbcDsn -Name "$DB" -DriverName "SQL Server" -DsnType "System" -Platform '64-bit' `
        -SetPropertyValue @("Server=$Server","Trusted_Connection=Yes","Database=$DB") -PassThru -ErrorAction Stop
        Write-Verbose -Message "ValidateODBCDriver: Driver Created Successfully" -Verbose
        Return $true
    }
}

Function SQLServerConnection($Server, $DB)
{
    if ($Global:Connection -eq $null)
    {
        Write-Warning -Message "SQLServerConnection: Connection Lost" -Verbose
        Write-Verbose -Message "SQLServerConnection: Establishing Conection..." -Verbose
        $Global:Connection = New-Object System.Data.Odbc.OdbcConnection
        $Global:Connection.ConnectionString = "Driver={SQL Server};Server=$Server;Database=$DB"
        $Global:Connection.Open()
        Write-Host "Connection Eastablished Successfully" -ForegroundColor Green
    }
    else
    {
        Write-Verbose -Message "SQLServerConnection: Connection Is Alive" -Verbose
        Return $Global:Connection
    }
}

Function SQLSelection($Query)
{
    $CMD = New-Object System.Data.Odbc.OdbcCommand($Query,$Global:Connection)
    $DS = New-Object system.Data.DataSet
    (New-Object system.Data.odbc.odbcDataAdapter($CMD)).Fill($DS) | Out-Null
    $DS.Tables[0]
}

Try
{
    # Give The Server Name
    $Server = "AZ1WKSTN001";
    # Don't Change The DB Name
    $DB = "master";

    $Check = Validate-ODBCDriver -Server $Server -DB $DB
    if($Check)
    {
        SQLServerConnection -Server $Server -DB $DB
        Write-Host "OSVersion"
        [System.Environment]::OSVersion | FT
        Write-Host "VM Name"
        HostName | FT
        $Query = "Select @@version As SqlVersion"
        $Result = SQLSelection -Query $Query
        $Result | FT -Wrap

        $Query = "Select @@servicename As InstanceName"
        $Result = SQLSelection -Query $Query
        $Result | FT -AutoSize

        $Query = "Select COUNT(*) DatabasesCount FROM sys.databases"
        $Result = SQLSelection -Query $Query
        $Result | FT -AutoSize

        $Query = "Select serverproperty('Edition') As SkuName"
        $Result = SQLSelection -Query $Query
        $Result | FT -AutoSize

        $Query = "declare @rc int, @dir nvarchar(4000) exec @rc = master.dbo.xp_instance_regread 
                 N'HKEY_LOCAL_MACHINE', 
                 N'Software\Microsoft\MSSQLServer\Setup', 
                 N'SQLPath', @dir output, 'no_output' select @dir AS InstallationDirectory"
        $Result = SQLSelection -Query $Query
        $Result | FT -AutoSize
    }
}
Catch
{
    $Message = $_.Exception.Message
    Write-Warning -Message $Message -Verbose
}
Finally
{
    $Global:Connection.Close()
    Write-Host "Connection Closed Successfully" -ForegroundColor Green
}