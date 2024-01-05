# Advanced-Database-project
## Scenario:
A database for the management of the blood bank system focusing on the management of the staff to record the data of donors and patients
The managers dealt with the requests of patients and hospitals by giving orders according to blood samples
By using this system searching the available blood becomes easy and saves lot of time than the manual system. It will hoard, operate, recover 
and analyze information concerned with the administrative and inventory management within a blood bank. This system is developed in a manner 
that it is manageable, time effective, cost effective, flexible and much man power is not required
 
## DB planning
The administration exercises that permit the phases of the information base framework advancement lifecycle to be acknowledged as proficiently 
and viably as could be expected under the circumstances.A significant initial phase in information base
arranging is to characterize the statement of purpose for the information base framework. 

### The mission statement :
characterizes the significant points of the information base framework.
## Mission objective :
ought to distinguish a specific undertaking that the information base framework must help.

## System Definition
Describes scope and boundaries of database system and the major user views. 

### 1-Scope and Boundaries
<img src= "https://github.com/maysoon-1/Advanced-Database-project/assets/107502613/f7685308-6080-48e4-9dcd-374f2a886865" width = "500">

 ### 2- Major User Views
<img src= "https://github.com/maysoon-1/Advanced-Database-project/assets/107502613/dae61399-89f1-4117-92d2-d9dd184ed59a" width = "500">

### 3- Cross-Reference of User Views
<img src= "https://github.com/maysoon-1/Advanced-Database-project/assets/107502613/22d4d878-892e-4aaf-abf4-433378a72b7b" width = "500">

### 4-Requirement collection and analysis
We have used the technique of open-ended questionnaires
https://docs.google.com/forms/d/e/1FAIpQLSdXyO2uyR2QFjFnZIvkF 
_SqjiyF3cEQ9YtOTmyXxumsP1H2lA/viewformChecklist

<img src= "https://github.com/maysoon-1/Advanced-Database-project/assets/107502613/c93071b6-af12-44ab-858b-7dbc72551ff0" width = "500">

### Conceptual database design (ER) MODEL 
<img src= "https://github.com/maysoon-1/Advanced-Database-project/assets/107502613/9b1a0858-1a1b-4b38-9ccb-b1352c408ca4" width = "500">

### ER MAPPING SCHEMAS:
<img src= "https://github.com/maysoon-1/Advanced-Database-project/assets/107502613/c693c567-fabe-4bf7-92c2-2ee885580b53" width = "500">

## RELATIONSHIP BETWEEN ENTITIES
### 1.Staff and Donor:
Relationship = “registers”
Type of relation = 1 to many
Explanation = One recording staff can register many donors. One donor 
will register with one recording officer.
The relationship with Recording staff and Donor is 1 to many. That’s why 
primary key of Recording staff is used as a foreign key in Donor.
### 2. Staff and patients:
Relationship = “record”
Type of relation = 1 to many
Explanation = One recording staff can record many patients. One patient will be
recorded by one recording staff.The relationship with staff and patients is 1 to many. That’s why primary 
key of staff is used as a foreign key in patients.
### 3. patients and Manager:
Relationship = “requests in ”
Type of relation = 1 to many
Explanation = One patients can request blood to one manager and one 
manager can handle requests from many patients.
The relationship with Blood Bank Manager and patients is 1 to many. 
That’s why primary key of Blood Manager is used as a foreign key in patients
### 4. Hospital and Manager:
Relationship = “gives order ”
Type of relation = 1 to many
Explanation = One Blood bank manager can handle and process requests 
from many hospitals. One hospital will place request to on blood bank manager
The relationship with Blood Bank Manager and Hospital info is 1 to many. 
That’s why primary key of Blood Bank manager is used as a foreign key in Hospital info.
### 5. Manager and Blood Specimen:
Relationship = “deales with ”
Type of relation = 1 to many
Explanation = One Blood bank manager can manage many blood 
specimen and one specimen will be managed by one manager.
The relationship with Blood Bank manager and Blood Specimen is 1 to 
many. That’s why primary key of Blood Bank manager is used as a foreign key in Blood Specimen
## Logical database Design:
<img src= "https://github.com/maysoon-1/Advanced-Database-project/assets/107502613/8492083c-7a1a-47c5-921c-ab966a9666fa" width = "500">

## Physical database Design
<img src= "https://github.com/maysoon-1/Advanced-Database-project/assets/107502613/9df81abf-71fd-463a-b82a-0f0ef193a4b9" width = "500">

## DBMS selection
### 1- Determine and study requirements:
<img src= "https://github.com/maysoon-1/Advanced-Database-project/assets/107502613/7ad9ee5e-7838-4cc0-8011-e5e228ec2d8b" width = "500">

### 2- shortlist two or three products:
- MySQL
- MongoDB
- Amazon Simple Storage Service (S3)
- Elasticsearch
### 3-evaluate products:
1. MySQL
2. MongoDB
3. Amazon Simple Storage Service (S3)
4. Elasticsearch
5- recommend selection and produce report
