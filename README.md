# CRM App

# Introduction

This is a Customer Relationship Management (CRM) Application built with Ruby on Rails 7 and styled using Bootstrap. It provides standard CRM functionalities like managing Contacts, Accounts, Opportunities, and Reports with role-based access control.

The application uses Devise for authentication and ActiveAdmin for admin panel management. CanCanCan is used for access control, ensuring different roles (Admin, Standard, Guest) have appropriate permissions.

# Installation & Setup

1. Clone the Repository

 git clone https://github.com/Gaurav-dev-04/crm_app.git
 cd crm_app

2. Install Dependencies

bundle install

3. Setup Database

Run the following commands to create and migrate the database:

rails db:create
rails db:migrate

4. Seed the Database (Optional)

To populate the database with default data, run:

rails db:seed

This will create sample users, accounts, contacts, opportunities, and reports.

5. Start the Server

rails server

Then, visit:

User Panel: http://localhost:3000

Admin Panel: http://localhost:3000/admin/login

# User Roles & Permissions

The application has three user roles with different permissions:

Role

Permissions

Admin

Can manage everything (CRUD for all models)

Standard

Can read Accounts, Contacts, Opportunities, and Reports. Can create Contacts & Opportunities. Can update Contacts.

Guest

Can only read Contacts.

# Admin Credentials (Default in Seed File)

Email: admin@example.com

Password: password

# Features

1. Authentication & Authorization

Uses Devise for user authentication.

Role-based access control with CanCanCan.

Admin users can manage all records via ActiveAdmin.

2. Models & Relationships

Contacts belong to Accounts.

Opportunities belong to Accounts and Contacts.

Reports track CRM activities.

3. ActiveAdmin Panel

Access at: http://localhost:3000/admin/login

Allows Admins to manage Users, Contacts, Accounts, Opportunities, and Reports.

4. CSV Export for Reports

Users can download reports as CSV next to the reports section.

5. UI Enhancements

Styled with Bootstrap for a clean and responsive UI.

Dropdown selectors for Accounts and Contacts.

Datepicker for Close Date.

Incremental Number Input for Stage.

API Routes

User Panel: http://localhost:3000

Admin Panel: http://localhost:3000/admin/login

Logout: DELETE /users/sign_out

Reports CSV Export: Button next to each report to download as CSV.