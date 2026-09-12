import { LightningElement } from 'lwc';
export default class FirstParentLwcComponent extends LightningElement {

    nameProp;
    phoneProp;
    emailProp;
    nameData;
    phoneData;
    emailData;
    isDisp=false;

    inputHandler(event){
        if(event.target.name=='Name'){
           this.nameProp=event.target.value; 
        }
        else if(event.target.name=='Phone'){
           this.phoneProp=event.target.value; 
        }
       else if(event.target.name=='Email'){
           this.emailProp=event.target.value; 
        }
    }
    clickHandler(event){
        this.nameData=this.nameProp;
        this.phoneData=this.phoneProp;
        this.emailData=this.emailProp;
        this.isDisp=true;
        console.log(this.nameData);
         console.log(this.nameProp);
    }

   /* nameValue(event){
        this.nameProp=event.target.value;
    }
    phoneValue(event){
        this.phoneProp=event.target.value;
    }
    emailValue(event){
        this.emailProp=event.target.value;
    }*/
    displayDetails(event){
        
        this.isDisp=true;
    }
    enterDetails(event){
        this.isDisp=false;
    }
}