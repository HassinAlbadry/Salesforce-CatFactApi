public class CatFactFetcherController {
    
    public ApexPages.StandardSetController setCon {
        get {
            if(setCon == null) {
                setCon = new ApexPages.StandardSetController(Database.getQueryLocator(
                    [SELECT Fact__c, Length__c FROM Cat_Fact__c]));
            }
            return setCon;
        }
        set;
    }

    // Initialize setCon and return a list of records
    public List<Cat_Fact__c> getFacts() {
        return (List<Cat_Fact__c>) setCon.getRecords();
    }
    
   
    public PageReference fetchCatFacts(){
        //call cat api fetch response add response to fact sobject
        AuthCallout.basicAuthCallout();
        //refresh page after fetching api to update page with new fact added. 
         PageReference tempPage = ApexPages.currentPage();            
         tempPage.setRedirect(true);
         return tempPage;
        
    }
    


}