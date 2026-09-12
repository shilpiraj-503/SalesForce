import { LightningElement,api } from 'lwc';
import Name from '@salesforce/schema/Account.Name';
import Type from '@salesforce/schema/Account.Type';
import Rating from '@salesforce/schema/Account.Rating';
export default class FirstLdsComp extends LightningElement {

    @api recordId;
    @api objectApiName;
    field=[Name,Type,Rating];

    /*
    // normaly we use this way to create records
    const fields={
       // fieldApiName :jsPropName
        Name : this.nameProp,
        Type : this.typeProp
    }
    recordInput = {apiName : 'Account', fields }
    createRecord(recordInput).then().catch()
    */

}