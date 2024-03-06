public with sharing class ContactService {
    public static Contact createContact(String firstName, String lastName, Id accountId) {
        Contact contact = new Contact();
        contact.FirstName = firstName;
        contact.LastName = lastName;
        contact.AccountId = accountId;
        insert contact;
        return contact;
    }
}