import { LightningElement,wire } from 'lwc';
import {MessageContext,publish} from 'lightning/messageService';
import CalcChannel from '@salesforce/messageChannel/secondChannel__c';

export default class FifthPubComponent extends LightningElement {
    countValue;
    @wire (MessageContext) messageContext;

    inputHandler(event){
        this.countValue=event.target.value;
        console.log(this.countValue);
    }
    handleClick(event){
        console.log(this.countValue);
        const data={
            'count': this.countValue,
            'operator' : event.target.label
        };
        publish(this.messageContext,CalcChannel,data);
    }
}