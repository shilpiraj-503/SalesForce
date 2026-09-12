import { LightningElement } from 'lwc';
import Contact_obj from '@salesforce/schema/Contact';
import Firstname from '@salesforce/schema/Contact.FirstName';
import Lastname from '@salesforce/schema/Contact.LastName';
import Phone from '@salesforce/schema/Contact.Phone';
import Email from '@salesforce/schema/Contact.Email';
import LeadSource from '@salesforce/schema/Contact.LeadSource';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class FifthLdsComp extends LightningElement {

 objectName=Contact_obj;
   // fields=[Firstname, Lastname, Phone, Email];
   fname=Firstname;                         //Mapping of all the fields
   lname=Lastname;
   phone=Phone;
   email=Email;
   leadso=LeadSource;
}