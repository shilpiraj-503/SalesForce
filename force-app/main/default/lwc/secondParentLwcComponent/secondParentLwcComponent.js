import { LightningElement, track } from 'lwc';
export default class SecondParentLwcComponent extends LightningElement {
    @track nameProp;

parentHandler(event){
    alert('in parent comp');
    alert(event.detail.firstName);
   // alert(event.detail.lastName);
    this.nameProp = event.detail.firstName;
}

    
}