import { LightningElement,wire } from 'lwc';
import {MessageContext,subscribe} from 'lightning/messageService';
import CalcChannel from '@salesforce/messageChannel/secondChannel__c';
export default class FifthSubComponent extends LightningElement {

        @wire (MessageContext) messageContext;
        subscription = 'null';

        countProp;
        connectedCallback() {
            this.subscribeToMessageChannel();
        }
        subscribeToMessageChannel(){
            this.subscription=subscribe(this.messageContext,CalcChannel,(message)=>this.operationHandler(message));
        }
        operationHandler(message){
            console.log(message);
            if(message.operator=='Add5'){
                this.countProp=parseInt(message.count)+5;
            } else if(message.operator=='Sub2'){
                this.countProp=message.count-2;
            } else if(message.operator=='Mul10'){
                this.countProp=message.count*10;
            } else if(message.operator=='Div5'){
                this.countProp=message.count/5;
            }
            console.log(this.countProp);
        }
}