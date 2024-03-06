/**
 * Created by ochuiko on 11/11/2019.
 */

public with sharing class SoqlInjectionExampleController {
    @AuraEnabled
    public static List<Contact> getContactsByName(String searchName){
        String searchPart = 'SELECT Id, FirstName, LastName FROM Contact';
        String wherePart = ' WHERE FirstName LIKE  \'%'+String.escapeSingleQuotes(searchName)+'%\'';

        List<Contact> liste = Database.query(searchPart + wherePart);
        System.debug('QUERY ' + searchPart + wherePart );

        return liste;
    }

}
// test%' OR Name LIKE '
// String.escapeSingleQuotes(searchName);