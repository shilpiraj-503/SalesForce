import { LightningElement,wire } from 'lwc';
import { CurrentPageReference } from 'lightning/navigation';
import {fireEvent} from 'c/pubsComp';
export default class PublishComp extends LightningElement {
@wire (CurrentPageReference) pageRef;
    nameProp;
    
    nameHandler(event){
        this.nameProp = event.target.value;
    }
    clickHandler(){
        // fire the event
        // fireEvent(url, eventName, data);
        var data = {'Name' : this.nameProp};
        console.log('Data :: ' + JSON.stringify(data));
        fireEvent(this.pageRef, 'pubsubevent', data);
    }
}