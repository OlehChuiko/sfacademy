import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import CONTACT_API_NAME from '@salesforce/schema/Contact';

import FIRSTNAME_API_NAME from '@salesforce/schema/Contact.FirstName';

import LASTNAME_API_NAME from '@salesforce/schema/Contact.LastName';

import EMAIL_API_NAME from '@salesforce/schema/Contact.Email';

export default class ContactCreator extends LightningElement {
    objectApiName = CONTACT_API_NAME;
    fields = [FIRSTNAME_API_NAME, LASTNAME_API_NAME, EMAIL_API_NAME];

    handleSuccess(event) {
        const toastEvent = new ShowToastEvent({
            title: "Contact created",
            message: "Record ID: " + event.detail.id,
            variant: "success"
        });
        this.dispatchEvent(toastEvent);
    }
}