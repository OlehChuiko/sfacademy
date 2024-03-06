import { LightningElement, wire } from 'lwc';

import { reduceErrors } from 'c/ldsUtils';

import CONTACT_API_NAME from '@salesforce/schema/Contact';

import FIRSTNAME_API_NAME from '@salesforce/schema/Contact.FirstName';

import LASTNAME_API_NAME from '@salesforce/schema/Contact.LastName';

import EMAIL_API_NAME from '@salesforce/schema/Contact.Email';

import getContacts from '@salesforce/apex/ContactController.getContacts';


const COLUMNS = [
  {label : 'First Name', fieldName : FIRSTNAME_API_NAME.fieldApiName, type : 'text'},
  {label : 'Last Name', fieldName : LASTNAME_API_NAME.fieldApiName, type : 'text'},
  {label : 'Email', fieldName : EMAIL_API_NAME.fieldApiName, type : 'text'},
];

export default class ContactList extends LightningElement {
    columns = COLUMNS;
    @wire(getContacts)
    contacts;

    get errors() {
        return (this.contacts.error) ?
            reduceErrors(this.contacts.error) : [];
    }
}