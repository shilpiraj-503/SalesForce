import { LightningElement } from 'lwc';
import Account_obj from '@salesforce/schema/Account';
import Name_Field from '@salesforce/schema/Account.Name';
import Type_Field from '@salesforce/schema/Account.Type';
import Rating_Field from '@salesforce/schema/Account.Rating';
import Industry_Field from '@salesforce/schema/Account.Industry';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class SecondLdsComp extends LightningElement {

    objectName=Account_obj;
    fields=[Name_Field,Type_Field,Rating_Field,Industry_Field];

saveHandler(event){
    const evt= new ShowToastEvent({
        title : 'Successfully!',
        message : 'Record Inserted!',
        variant : 'success'
    });
    this.dispatchEvent(evt);
}
}