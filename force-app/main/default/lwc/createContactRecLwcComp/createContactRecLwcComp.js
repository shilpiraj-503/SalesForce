import { LightningElement } from 'lwc';
import insertContact from '@salesforce/apex/insertContactLwcCtrl.insertContact';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class CreateContactRecLwcComp extends LightningElement {
    firstProp;
    lastProp;
    emailProp;
    phoneProp;
    inputHandler(event){
        if(event.target.label=='FirstName'){
            this.firstProp=event.target.value;
        } else if(event.target.label=='LastName'){
            this.lastProp=event.target.value;
        } else if(event.target.label=='Phone'){
            this.phoneProp=event.target.value;
        } else if(event.target.label=='Email'){
            this.emailProp=event.target.value;
        }
        //console.log(this.firstProp);
    }
    buttonHandler(event){
        const fields={
            'FirstName' : this.firstProp,
            'LastName' : this.lastProp,
            'Phone' : this.phoneProp,
            'Email' : this.emailProp
        };
        console.log(JSON.stringify(fields));
        insertContact({
            con : fields
        }
        ).then(result=>{
            const evt=new ShowToastEvent({
             title: 'Success',
             message : 'Successfully Inserted',
             variant : 'success'
             });
            this.dispatchEvent(evt);
            window.open('/'+result);
        }).catch(error =>{
             const evt=new ShowToastEvent({
              title: 'Error',
              message : 'Error!'+JSON.stringify(error),
              variant : 'error'
             });
            this.dispatchEvent(evt);
        });

    }

}