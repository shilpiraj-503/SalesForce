import { LightningElement,wire } from 'lwc';
import {registerListener, unregisterAllListener} from 'c/pubsComp';
import {CurrentPageReference} from 'lightning/navigation';
export default class SubscribeSecondComp extends LightningElement {

fullNameProp;
@wire (CurrentPageReference) pageRef;
connectedCallback() {
    //code
    registerListener('secondEvt',this.handleDataFunc,this);
}
disconnectedCallback() {
    //code
    unregisterAllListener(this);
}
handleDataFunc(detail){
    this.fullNameProp=detail.Result;
    console.log(this.fullNameProp);
}
}