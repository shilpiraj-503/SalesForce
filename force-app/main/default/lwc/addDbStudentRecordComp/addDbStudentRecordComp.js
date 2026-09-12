import { LightningElement,wire } from 'lwc';

import {registerListener, unregisterAllListener} from 'c/pubsComp';
import {CurrentPageReference} from 'lightning/navigation';
export default class AddDbStudentRecordComp extends LightningElement {

@wire (CurrentPageReference) pageRef;
    name;
    state;
    fees;
    email;
    city;

connectedCallback() {
    //code
    registerListener('stdEvt',this.handleDataFunc,this);
}
disconnectedCallback() {
    //code
    unregisterAllListener(this);
}
handleDataFunc(detail){
    this.name=detail.Student_Name__c;
    this.email=detail.Student_Email__c;
   this.state=detail.Student_State__c;
    this.fees=detail.Student_Deposit_Fees__c;
    this.city=detail.City__c;
    console.log(this.name);
}
}