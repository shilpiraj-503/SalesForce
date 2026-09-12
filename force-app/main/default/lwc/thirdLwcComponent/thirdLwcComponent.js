import { LightningElement } from 'lwc';
export default class ThirdLwcComponent extends LightningElement {

    nameProp;
    phoneProp;
    checkProp=false;

nameHandler(event){
    console.log('Your Name: '+event.target.value);
    //when u will assign the value in property in a function so use property
    this.nameProp=event.target.value;
   // this.phoneHandler();
}
phoneHandler(event){
    //alert('Welcome to LWC ');
    this.phoneProp=event.target.value;
    console.log('Your Phone: '+event.target.value);
}
checkboxHandler(event){
    //alert('Welcome to LWC ');
   this.checkProp=event.target.checked;
    console.log('Your checkbox: '+event.target.checked);
}
}