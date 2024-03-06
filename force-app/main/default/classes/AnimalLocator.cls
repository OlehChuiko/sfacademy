public class AnimalLocator {
    public static final String HEROKUURLJSON = 'https://th-apex-http-callout.herokuapp.com/animals/';

    public static String getAnimalNameById(Integer Id) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(HEROKUURLJSON+id);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        String strResp = '';

        if (response.getStatusCode() == 200) {

            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());

            Map<String,object> animals = (Map<String,object>) results.get('animal');
            strResp = String.valueof(animals.get('name'));
        }

        return strResp ;
    }
}