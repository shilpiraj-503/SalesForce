import { LightningElement } from 'lwc';
import getConRec from '@salesforce/apex/ImperativeContactDisplay.getContacts';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class DiaplayConSpinnerLwcComponent extends LightningElement {

conList;
isLoading=false;
clickHandler(event){
    this.isLoading=true;
    console.log('Fuction is called!');
    getConRec().then(result => {
        console.log(JSON.stringify(result));
        this.conList=result;
        const evt=new ShowToastEvent ({
            title: 'Success',
            message : 'Fetched the data Successfully!',
            variant: 'success'
        });
        this.dispatchEvent(evt);
         this.isLoading=false;
    }).catch(error=>{
        //alert('Error Occured!');
         const evt=new ShowToastEvent ({
            title: 'Error',
            message : 'Data Couldnt be fetched!',
            variant: 'error'
        });
        this.dispatchEvent(evt);
    });
   
}
}