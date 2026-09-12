import { LightningElement } from 'lwc';
import Contact_obj from '@salesforce/schema/Contact';
import Firstname from '@salesforce/schema/Contact.FirstName';
import Lastname from '@salesforce/schema/Contact.LastName';
import Phone from '@salesforce/schema/Contact.Phone';
import Email from '@salesforce/schema/Contact.Email';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class ThirdLdsComp extends LightningElement {

    objectName=Contact_obj;
    fields=[Firstname, Lastname, Phone, Email];

saveHandler(event){
    const evt= new ShowToastEvent({
        title : 'Successfully!',
        message : 'Record Inserted!',
        variant : 'success'
    });
    this.dispatchEvent(evt);
}
}