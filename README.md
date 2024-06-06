Salesforce Cat Facts Integration:
This project integrates Salesforce with an external API to fetch cat facts and store them in a custom Salesforce object.

Prerequisites:
Salesforce Developer Org
Salesforce Developer Console or VS Code with Salesforce extensions
API key for the external API (if required)


Custom Object:
Create a custom object in Salesforce named Cat_Fact__c with the following fields:

-Fact__c (Text)
-Length__c (Decimal)


Usage:
Deploy the  AuthCallout & CatFactFetcherController classes to your Salesforce org.
Create the custom object and fields as specified.
Add provided visual force page to your org. 
view page and start clicking button to make connection to api and see updated result from custom object
