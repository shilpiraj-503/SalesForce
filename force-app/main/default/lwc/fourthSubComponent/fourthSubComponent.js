import { LightningElement,wire } from 'lwc';
import { MessageContext,subscribe} from 'lightning/messageService';
import CalcChannel from '@salesforce/messageChannel/firstChannel__c';

export default class FourthSubComponent extends LightningElement {

    @wire (MessageContext) messageContext;

    resultProp;
    subscription = 'null';

    connectedCallback() {           // same name compulsory
        //code
        this.subscribeToMessageChannel();

    }
    subscribeToMessageChannel(){    //name should not be altered
       
       this.subscription=subscribe(this.messageContext,CalcChannel,(message)=>this.handleMessage(message));

    }
    handleMessage(message){         //any name
        console.log(JSON.stringify(message));
        if(message.operator=='Add'){
            this.resultProp=parseInt(message.firstValue)+parseInt(message.secondValue);
        } else if(message.operator=='Sub'){
            this.resultProp=message.firstValue-message.secondValue;
        } else if(message.operator=='Mul'){
            this.resultProp=message.firstValue*message.secondValue;
        } else if(message.operator=='Div'){
            this.resultProp=message.firstValue/message.secondValue;
        }
        console.log(this.resultProp);    

    }

}