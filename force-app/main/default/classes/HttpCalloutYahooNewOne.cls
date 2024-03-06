public class HttpCalloutYahooNewOne {
	 public static final String YAHOOURLJSON = 'https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.xchange%20where%20pair%20in%20(%22EURUSD%22%2C%22GBPUSD%22)&format=json&diagnostics=true&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback=';
    public static final String YAHOOURLXML = 'https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.xchange%20where%20pair%20in%20(%22EURUSD%22%2C%22GBPUSD%22)&diagnostics=true&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys';
  // Pass in the endpoint to be used using the string url
  public void getCalloutResponseContents(String url) {

    // Instantiate a new http object
    Http h = new Http();

     // Instantiate a new HTTP request, specify the method (GET) as well as the endpoint
    HttpRequest req = new HttpRequest();
    req.setEndpoint(url);
    req.setMethod('GET');

    // Send the request, and return a response
    HttpResponse res = h.send(req);
     res.getBody();
      
      JSONParser parser = JSON.createParser(res.getBody());
        String convRate = '';
     	List<Rate__c> listRates = new List<Rate__c>();
        while (parser.nextToken() != null) {
           // Rate__c myRate = new Rate__c();
            if(parser.getCurrentToken() == JSONToken.FIELD_NAME)
            {
                if(parser.getCurrentToken() == JSONToken.START_OBJECT){}
                if(parser.getText() == 'Rate')
                {
                    
                }
            }
            if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && 
                (parser.getText() == 'Rate')) {
                parser.nextToken();
                convRate = parser.getText();
            }
        }
      
        System.debug('convRate :'+convRate);       
        Rate__c rate = new Rate__c();
        rate.Conversion_rate__c = convRate;        
        insert rate;  
  
}
   
}