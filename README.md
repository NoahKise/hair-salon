# Eau Claire's Salon

#### By Noah Kise

#### A C# web application to allow a salon owner to keep track of her stylists and clients.

## Technologies Used

* C#
* .NET 6 SDK
* Entity Framework Core
* MySQL
* CSS
* Razor Pages

## Description

This is a simple web application to help a fictional salon owner keep track of her stylists and clients. The user can create, read, update, and delete instances of both the stylist and client classes. Search functionality for all lists is included.

## Setup/Installation Requirements

* .NET must be installed. Latest version can be found [here](https://dotnet.microsoft.com/en-us/).
* To run locally on your computer, clone the main branch of this [repository](https://github.com/NoahKise/hair-salon).
* In your terminal, navigate to the root folder of this project and run `dotnet restore`.
* To set up a local database for this project, you will need to import the `noah_kise.sql` schema.
    * Open MySQL Workbench. Latest version can be downloaded [here](https://dev.mysql.com/downloads/workbench/).
    * In the *Navigator > Administration* window, select *Data Import/Restore*.
    * In *Import Options* select *Import from Self-Contained File*.
    * Navigate to `noah_kise.sql`.
    * Under *Default Schema to be Imported To*, select the *New* button.
        * Enter noah_kise as the name of the database. You can name it whatever you like, but if you stray from this suggested name, you will have to adjust your appsettings.json file to reflect that change.
    * Navigate to the tab called *Import Progress* and click *Start Import* at the bottom right corner of the window.
    * Reopen the *Navigator > Schemas tab*. Right click and select *Refresh All*. The database will appear.
* Create a new file in the "HairSalon" directory called appsettings.json. NOTE: If you plan to use this project as a jumping off point for further development, you must ensure that appsettings.json is added to your .gitignore file and committed prior to creating this file.
* In `appsettings.json`, enter the following, replacing `USERNAME` and `PASSWORD` to match the settings of your local MySQL server. NOTE: if you named your database something other than noah_kise, you need to replace `noah_kise` in the following code snippet with whatever name you chose.
  
```
{
    "ConnectionStrings": {
        "DefaultConnection": "Server=localhost;Port=3306;database=noah_kise;uid=USERNAME;pwd=PASSWORD;"
    }
}
```
* Optionally, you can set up the local database from the `noah_kise_sample_data_included.sql` file instead to have some sample data already included, to make it easier to test and view features without inputting your own data first. 
* To view the project in a web browser, navigate to the "HairSalon" directory and run `dotnet watch run`.

## Known Bugs

* None at this time.

## License

Code licensed under [GPL](LICENSE.txt)

Any suggestions for ways I can improve this app? Reach out to me at noah@kisefamily.com

Copyright (c) February 3 2024 Noah Kise