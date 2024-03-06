@RestResource(urlMapping='/updatecustomer')
global class ShopifyRESTCustomerUpdate {
    @HttpPost
    global static void updateCustomer(){
        
        String responseBody =  RestContext.request.requestBody.toString();
        System.debug('responseBody');
        System.debug(responseBody); 
    }

}