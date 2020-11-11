It is important to remember that Public Cloud is really just a service that allows you to rent computing resources by the hour.
 These computers and associated hardware and software are fully managed and maintained by the Public Cloud Provider which means you don’t have to worry. 
What you are physically connecting to is a room full of racks of servers and storage which is very secure and well maintained in a way this is not 
practical/economic for most businesses to emulate.

IaaS (Infrastructure as a Service) is the basic offering. This consists of compute.processing capacity which is the equivalent of a Server in an on premise environment.
 This usually comes with an Operating System preinstalled. Then you can get Storage which is measured in GB for putting raw data and processed information. If you want to do anything useful with a computer system you need to add some more stuff.

PaaS (Platform as a Service) adds the Platform layer to the basic IaaS offering i.e. with PaaS you get IaaS + Platform Stuff. 
The most common item included in the platform layer is a Database. On top of the PaaS service you need to add Application Software to actually perform a useful task.
 Usually you BYOL Bring Your Own Licence for Software which you load on top of the PaaS Service. It is possible to run the Application software on a different server 
which communicates with the PaaS Server. This is referred to as a multi tier architecture.

SaaS (Software as a Service) If you want the Cloud provider to provision and manage everything you need to order SaaS. 
This adds the application software on top of the PaaS layer.

In conclusion the most common PaaS service from Microsoft Azure is a fully managed environment consisting of Server+Storage+Windows Server OS+SQL Database.
 All of this is maintained in a secure facility with redundant power and cooling. Data is typically replicated 3 times to cater for a hard disk failure.
 There are many additional performance or security/redunancy options available.

867 views · Answer requested by Jowanna Daley
Related Questions
More Answers Below
Which are the PaaS services offered by Google Cloud?
Which are the PaaS services offered by GCP?
What is the difference between IaaS, SaaS, and Paas?
What are the top 10 most used Microsoft Azure services?
What is the difference between PaaS and FaaS?

AbdurRahman Lakhani
Answered March 29, 2019 · Author has 172 answers and 52.2K answer views
Originally Answered: What is Microsoft Azure PaaS?
Azure Platform As A Service (PaaS)

Platform as a service (PaaS) is a deployment and development environment within the cloud that delivers simple cloud-based apps to complex, cloud-enabled applications. PaaS is designed to support the complete web application lifecycle of building, testing, deploying, managing, and updating.

PaaS includes a complete infrastructure of servers, storages, networking, and middleware development tools like business intelligence services (BI), database management systems, etc. A complete platform is offered in PaaS in which the client can host their applications witho


Continue Reading
Promoted by Interview Kickstart - Coding Bootcamp
Are there any courses, boot camps, and tutors that teach cracking coding interviews at Google or Facebook?

Soham Mehta, InterviewKickstart.com. Prev: Director of Engineering @ Box. Worked @ MSFT, eBay
Updated May 2, 2019
Consider us: Coding Interview Preparation Bootcamp, Large Scale Systems Design Interview Preparation Bootcamp The difference in attending a bootcamp vs going alone, is that of staying fit by going to a Gym and staying fit by working out on the trail. Both paths work, but the results in the
(Continue reading)

Grant Fritchey, lives in MS SQL Server
Answered July 23, 2018 · Author has 1.6K answers and 2M answer views
For the data platform there are quite a few:

Azure SQL Database
Azure SQL Datawarehouse
Managed Instance
Azure Database for MySQL
Azure Database for PostgreSQL
HDInsight

But there’s more than that. Then there’s the development platform, analytics, workflow and others. Go here and look through the listings: Microsoft Azure Cloud Computing Platform & Services

Asked to Answer

579 viewsView 2 Upvoters · Answer requested by Allamdas Sagar

Adam Bodnar, Partner Technology Strategist at Microsoft (2017-present)
Answered July 24, 2018 · Author has 268 answers and 352.1K answer views
Here you can find an interactive map with all Azure services: Azure 101 .

455 views
Related Questions
More Answers Below
What are the services offered by Microsoft Azure?
What is the difference between IaaS and PaaS?
What are examples of PaaS cloud computing?
What is the difference between SaaS, PaaS and IaaS with real life examples?
What are Iaas, Paas, and Saas? Can you give examples of each?

Vaibhav Jayas, former Software Support Specialist
Answered July 27, 2019 · Author has 175 answers and 13.6K answer views
Originally Answered: Is Microsoft Azure a PaaS?
Yes it is

267 views
Related Questions
Which are the PaaS services offered by Google Cloud?
Which are the PaaS services offered by GCP?
What is the difference between IaaS, SaaS, and Paas?
What are the top 10 most used Microsoft Azure services?
What is the difference between PaaS and FaaS?
What are the services offered by Microsoft Azure?
What is the difference between IaaS and PaaS?
What are examples of PaaS cloud computing?
What is the difference between SaaS, PaaS and IaaS with real life examples?
What are Iaas, Paas, and Saas? Can you give examples of each?
What is SaaS, PaaS, and IaaS? When to use SaaS, PaaS, and IaaS?
What is the difference between SaaS and PaaS?
What are “Paas” and “SaaS” in Amazon?
What are the main differences in the IaaS and PaaS services offered by Google, GCP, Amazon, AWS and Microsoft Azure?
Is Google PaaS or SaaS?
Related Questions
Which are the PaaS services offered by Google Cloud?
Which are the PaaS services offered by GCP?
What is the difference between IaaS, SaaS, and Paas?
What are the top 10 most used Microsoft Azure services?
What is the difference between PaaS and FaaS?
What are the services offered by Microsoft Azure?





Azure PaaS services
Azure offers five main services of Platform as a Service in which multiple service types host a custom application or a business logic for specific use cases:

1. Web apps
These are an abstraction of a Web Server such as IIS and Tomcat that run applications written in mostly in Java, Python,.NET, PHP, Node.js, etc. These are simple to set up and provide a variety of benefits, available 99.9% of the time which is a key benefit.

2. Mobile apps
The back ends of mobile apps can be hosted on the Azure PaaS easily using the SDKs available for all major mobile operating systems of iOS, Android, Windows, etc. It enables the unique ability of offline sync so the user can use the app even if they are offline and sync the data back when they are back online. Another major benefit is the ability to push notifications allowing sending of custom notifications for all targeted application users.

3.  Logic apps
No apps are hosted, but there is an orchestrated business logic app to automate a business process. These are initiated by a trigger when a predefined business condition is met.

4. Functions
Functional apps can perform multiple tasks within the same application. These functional apps host smaller applications such as microservices and background jobs that only run for short periods.

5. Web jobs
These are a part of a service that runs within an app service on web apps or mobile apps. They are similar to Functions but do not require any coding to set it up.

 
