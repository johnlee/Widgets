# Widgets
Sample app .Net MVC, API, EF, SQL on Azure

This is a sample project that contains the following:

    ASP.NET MVC (4.6)
    ASP.NET WEBAPI
    SQL (SQL SERVER 2014)
    ENTITY FRAMEWORK (5)
    UNIT TESTS

All is deployed on Azure here:

http://samplewidgets.azurewebsites.net/

I use this to demonstrate how these different components in Visual Studio could be setup in a single solution. I also use it to demonstrate continuous integration through Team Services with automation to Azure. This publishes the MVC/WEBAPI to an app service (IIS), then using DACPAC it also deploys the database to an SQL Server.


More information about how DACPAC works and examples of deploying the Azure are listed below.

https://www.visualstudio.com/en-us/docs/build/apps/aspnet/cd/deploy-dacpac-sqlpackage

https://blogs.msdn.microsoft.com/ssdt/2016/04/06/sqldb-cicd-intro/

TBD
