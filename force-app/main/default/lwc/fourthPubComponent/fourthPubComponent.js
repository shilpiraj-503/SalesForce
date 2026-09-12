import { LightningElement,wire } from 'lwc';
import { MessageContext, publish} from 'lightning/messageService';
import CalcChannel from '@salesforce/messageChannel/firstChannel__c';

export default class FourthPubComponent extends LightningElement {

    aValue;
    bValue;
    @wire (MessageContext) messageContext;

    inputHandler(event){
        if(event.target.label=='Enter A value'){
            this.aValue=event.target.value;
        } else if(event.target.label=='Enter B value'){
            this.bValue=event.target.value;
        }

    }
    handleClick(event){
        console.log(this.aValue);
        console.log(this.bValue);
        const data={
            'firstValue' : this.aValue,
            'secondValue' : this.bValue,
            'operator' : event.target.label
        };
        publish(this.messageContext,CalcChannel,data);

    }
}