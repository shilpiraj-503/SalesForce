import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class ToastMsgLwcComponent extends LightningElement {
    //Toast Msg
    // step 1: we will import the toast event.
    //

successHandler(){
    const evt=new ShowToastEvent({
        title: 'Success',
        message : 'Success Flag',
        variant : 'success'
    });
    this.dispatchEvent(evt);
}
errorHandler(event){
    const evt=new ShowToastEvent({
        title: 'Error',
        message : 'Error Flag',
        variant : 'error'
    });
    this.dispatchEvent(evt);
}
warningHandler(event){
    const evt=new ShowToastEvent({
        title: 'Warning',
        message : 'Warning Flag',
        variant : 'warning'
    });
    this.dispatchEvent(evt);
}
infoHandler(event){
    const evt=new ShowToastEvent({
         title: 'Info',
        message : 'Info Flag',
        variant : 'info'
    });
    this.dispatchEvent(evt);
}
}