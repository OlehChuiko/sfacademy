@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {
    @HttpGet
    global static Account getAccount()
    {
        RestRequest request = RestContext.request;
        System.debug('Do something right');
        String accId = request.requestURI.substringBetween('Accounts/', '/contacts');
        Account result =[SELECT Id, Name, (SELECT Id, Name FROM Contacts) 
                       FROM Account WHERE Id = :accId];   
        return result;
    }

}