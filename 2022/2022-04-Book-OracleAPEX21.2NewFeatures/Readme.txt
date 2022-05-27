This is additional material for the book "Oracle Application Express 21.2 - Explore the new Features" (by Dietmar Aust).
You can find more information here: https://dietmaraust.com/books/apex-new-features-21-2. 

-----------------------------------------------------------------------------
-- Installation of Sample Objects
-----------------------------------------------------------------------------

The examples in the book are based on the well-known "OEHR_*" data model which is commonly used by Oracle Education. 

First, you need to install the Sample Data Set "HR Data" in our database schema. These are the well-known "OEHR_*" tables.
- Log in to your APEX Workspace
- Navigate to SQL Workshop > Utilities > Sample Data Sets
- Click on "Install" for Data Set: "HR Data" (The generic HR tables commonly used by Oracle Education)

Next, run the script "install_supporting_objects.sql" (located in this directory) in your database schema. You can do this by using SQLDeveloper, SQLcl, SQLPlus, APEX SQL Workshop or any other suitable tool. 

This will:
- add columns TAGS and GEOMETRY to the table OEHR_CUSTOMERS and seed them with sample data
- create a view OEHR_CUSTOMERS_RL_V

-----------------------------------------------------------------------------
-- Removal of Sample Objects
-----------------------------------------------------------------------------

In order to remove the sample objects again from your schema: 
- Run the script "deinstall_supporting_objects.sql" (located in this directory) in your database schema.
- Log in to your APEX Workspace
- Navigate to SQL Workshop > Utilities > Sample Data Sets
    - Click on "Update" and then on "Remove Dataset"

Enjoy,
~Dietmar. 


