# PropTrackr

## Project Description
**PropTrackr** is a database project designed to manage property rentals. It includes tables for landlords, properties, tenants, lease agreements, payments, and maintenance requests. The database ensures proper relationships between entities and supports operations like tracking payments, managing leases, and handling maintenance requests.

## How to Run/Setup the Project
1. Install MySQL Server if not already installed.
2. Open your MySQL client or any database management tool (e.g., MySQL Workbench).
3. Import the SQL files in the following order:
   - `one.sql` to create the database and tables.
   - SQL files in the `tables/` directory to populate the tables with sample data.
     - `propertymanagementdb_landlord.sql`
     - `propertymanagementdb_property.sql`
     - `propertymanagementdb_tenant.sql`
     - `propertymanagementdb_leaseagreement.sql`
     - `propertymanagementdb_payment.sql`
     - `propertymanagementdb_maintenancerequest.sql`

   Example command to import a file:
   ```bash
   mysql -u [username] -p [database_name] < [file_path]

4. Verify that the database and tables are created successfully.


## ERD Diagram
The Entity-Relationship Diagram (ERD) for the database is located in the ERD diagram/ directory. It visually represents the relationships between the entities in the database.

## Repository Contents
- **one.sql:** SQL script to create the database and tables.
- **tables/:** Directory containing SQL scripts to populate the tables with sample data.
- **ERD diagram/:** Directory containing the ERD for the database.
- **README.md:** Documentation for the project.

## Screenshot of ERD
![ERD Diagram](<ERD diagram/PropTrackr ERD Diagram.drawio.png>)

## Features
- Manage landlords, tenants, properties, and lease agreements.
- Track payments and maintenance requests.
- Ensure proper relationships between entities for data integrity.


## Technologies Used
- MySQL for database management.
- SQL scripts for database creation and data population.

## Credits
- GitHub: [@MykeShale](https://github.com/MykeShale)
