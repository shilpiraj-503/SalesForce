import { LightningElement,wire } from 'lwc';
import accountRecords from '@salesforce/apex/DisplayAccLwcCtrl.getAccountRecords';          //import the class u want to add in ur component.
export default class AccountRecordsLwcComponent extends LightningElement {
    accList;
    @wire (accountRecords) accList;

}