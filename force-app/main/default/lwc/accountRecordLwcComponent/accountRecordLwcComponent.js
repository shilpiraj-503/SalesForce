import { LightningElement,wire } from 'lwc';
import getAccRec from '@salesforce/apex/deleteAccount.getAccount';
import { deleteRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { refreshApex } from '@salesforce/apex';
export default class AccountRecordLwcComponent extends LightningElement {

accListProp;
recordId;
@wire (getAccRec) accListProp;  // ----> first approach 


handleClick(event){
    this.recordId=event.target.value;
    alert(this.recordId);
    deleteRecord(this.recordId).then(result=> {
        const evt=new ShowToastEvent ({
            title: 'Success',
            message : 'Id was Deleted!'+JSON.stringify(result),
            variant: 'success'
        });
        this.dispatchEvent(evt);
        //window.location.reload();
        return refreshApex(this.accListProp);
    }).catch(error => {
        const evt=new ShowToastEvent ({
            title: 'Error',
            message : 'Cannot be Deleted!'+JSON.stringify(error),
            variant: 'error'
        });
        this.dispatchEvent(evt);
    });
}

}