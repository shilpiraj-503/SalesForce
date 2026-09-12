import { LightningElement, wire } from 'lwc';
import { registerListener, unregisterAllListeners } from 'c/pubsComp'; 
import { CurrentPageReference } from 'lightning/navigation'; 
export default class SubscribeComp extends LightningElement {
 @wire (CurrentPageReference) pageRef;
    name;

    connectedCallback() { 
        registerListener('pubsubevent',this.abcFunc,this); 
    } 
    disconnectedCallback() {
        unregisterAllListeners(this);
    }
    abcFunc(detail){
        alert('parameter from publisher :: '+ detail.Name);
        this.name = detail.Name;
    }
}