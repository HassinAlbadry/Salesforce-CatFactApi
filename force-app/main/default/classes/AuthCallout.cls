public class AuthCallout {
    
 
   public static void basicAuthCallout(){
     HttpRequest req = new HttpRequest();
       //endpoint to connect to 
     req.setEndpoint('https://catfact.ninja/fact');
     req.setMethod('GET');
     
      
     // Create a new http object to send the request object
     // A response object is generated as a result of the request  
  
     Http http = new Http();
     HTTPResponse res = http.send(req);
      //deserialize response from json to object 
     Map<String,String> data = (Map<String,String>) JSON.deserialize(res.getBody(),Map<String,String>.class);
       //get values from fact and length 
        String fact = (String) data.get('fact');
        String lengthStr = (String) data.get('length');
       //converting length from string to decimal to be able to insert into decimal length sObject field
        Decimal length = Decimal.valueOf(lengthStr.split(' ')[0]);
        
				//create a new record and assign fact and length to its fields
                Cat_Fact__c catFact = new Cat_Fact__c(
                    Fact__c = fact,
                    Length__c = length
                );
       			//insert new record to database
                insert catFact;
     
   }
}