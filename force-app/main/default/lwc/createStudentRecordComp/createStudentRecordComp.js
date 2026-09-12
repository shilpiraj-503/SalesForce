import { LightningElement,wire } from 'lwc';
import {createRecord} from 'lightning/uiRecordApi';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import {CurrentPageReference} from 'lightning/navigation';
import {fireEvent} from 'c/pubsComp';

export default class CreateStudentRecordComp extends LightningElement {

    @wire (CurrentPageReference) pageRef;
    name;
    state;
    fees;
    email;
    city;

    nameHandler(event){
        if(event.target.label=='Name'){
            this.name=event.target.value;
        } else if(event.target.label=='Email'){
            this.email=event.target.value;
        } else if(event.target.label=='State'){
            this.state=event.target.value;
        } else if(event.target.label=='DepositFees'){
            this.fees=event.target.value;
        } else if(event.target.label=='City'){
            this.city=event.target.value;
        }


    }
    clickHandler(event){
        console.log(this.name);
        const fields={
            'Student_Name__c' : this.name,
            'Student_Email__c' : this.email,
            'Student_State__c' : this.state,
            'Student_Deposit_Fees__c' : this.fees,
            'City__c' :this.city
        };
        fireEvent(this.pageRef,'stdEvt',fields);
        const recordInput={
            'apiName' : 'Student__c',
            'fields' : fields
        };
        console.log(JSON.stringify(fields));
        createRecord(recordInput).then(result=>{
            const evt=new ShowToastEvent({
                title : 'success',
                message : 'Record created Successfully!'+JSON.stringify(result),
                variant : 'success'
            });
            this.dispatchEvent(evt);
        }).catch(error=>{
            const evt=new ShowToastEvent({
                title : 'Error',
                message : 'Record not created!'+JSON.stringify(error),
                variant : 'error'
            });
            console.log(JSON.stringify(error));
            this.dispatchEvent(evt);
        });
        
    }

}