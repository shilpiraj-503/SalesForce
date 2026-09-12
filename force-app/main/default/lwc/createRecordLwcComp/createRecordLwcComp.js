import { LightningElement } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class CreateRecordLwcComp extends LightningElement {

nameProp;
typeProp;
phoneProp;
ratingProp;

inputHandler(event){
   // console.log('working');
    if(event.target.label=='Name'){
        this.nameProp=event.target.value;
        //console.log(this.nameProp);
    } else if(event.target.label=='Type'){
        this.typeProp=event.target.value;
    } else if(event.target.label=='Rating'){
        this.ratingProp=event.target.value;
    }else if(event.target.label=='Phone'){
        this.phoneProp=event.target.value;
    }

}
buttonHandler(){
    alert('button');
    console.log(this.nameProp);
    console.log(this.phoneProp);
    console.log(this.ratingProp);
    console.log(this.typeProp);
    const fields={
        'Name' : this.nameProp,
        'Type' : this.typeProp,
        'Rating' : this.ratingProp,
        'Phone' :this.phoneProp
    };                                      //mapping variables
    console.log(JSON.stringify(fields));
    const recordInput={
        'apiName' : 'Account',
        'fields' : fields
    };                                      //providing parameter to record api
    createRecord(recordInput).then(result => {
        const evt=new ShowToastEvent({
             title: 'Success',
        message : 'Successfully Created'+JSON.stringify(result),
        variant : 'success'
        });
        this.dispatchEvent(evt);
       window.open('/'+result.id);          // redirecting to the page
       // console.log(JSON.stringify(result));
    }).catch(error =>{
        const evt=new ShowToastEvent({
        title: 'Error',
        message : 'Error! Record could not be created!'+JSON.stringify(error),
        variant : 'error'
        });
         this.dispatchEvent(evt);
    });                                      //call made to api
    
}
}