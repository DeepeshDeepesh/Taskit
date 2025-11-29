This is the DBMS project for JIIT

Requirements

Intellij
Mysql Workbench



Description of the Project:

Taskit is a system for home service providers that was developed as a project. It manages customers, service professionals, and service requests in a structured MySQL database, replacing manual records and spreadsheets that often lead to confusion and data loss.

In order to preserve data consistency and prevent duplication, the project focuses on a normalized schema with core tables for Customer, Professional, ServiceRequest, and ServiceType, along with appropriate relationships. It facilitates the addition, updating, deletion, and searching of records, as well as the filtering of professionals based on the type and location of their services and the preservation of their entire service history.

The backend is implemented in Java with JDBC, providing a console-based interface to interact with the MySQL database and demonstrate CRUD and join queries on the designed schema. This repository contains Java source code, ER-model-based design, and the database creation script.
