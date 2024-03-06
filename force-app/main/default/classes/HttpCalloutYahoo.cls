public class HttpCalloutYahoo {
    public static final String yahooURLJSON = 'https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.xchange%20where%20pair%20in%20(%22EURUSD%22%2C%22GBPUSD%22)&format=json&diagnostics=true&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback=';
    public static final String yahooURLXML = 'https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.xchange%20where%20pair%20in%20(%22EURUSD%22%2C%22GBPUSD%22)&diagnostics=true&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys';
  // Pass in the endpoint to be used using the string url
  public String getCalloutResponseContents(String url) {

    // Instantiate a new http object
    Http h = new Http();

     // Instantiate a new HTTP request, specify the method (GET) as well as the endpoint
    HttpRequest req = new HttpRequest();
    req.setEndpoint(url);
    req.setMethod('GET');

    // Send the request, and return a response
    HttpResponse res = h.send(req);
    return res.getBody();
  
}
   
    public  void convertCurrency(String  myJson){
      
        JSONParser parser = JSON.createParser(myJson);
        String convRate = '';
        while (parser.nextToken() != null) {
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