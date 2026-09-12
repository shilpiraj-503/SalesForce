import { LightningElement,wire } from 'lwc';
import getAccRec from '@salesforce/apex/AssignmentHelper.getAccounts';
import { NavigationMixin } from 'lightning/navigation';
export default class AssignmentComp extends NavigationMixin(LightningElement) {
    accList;
    

    @wire (getAccRec) accListFunc({data,error}){
        if(data){
            this.accList=data;
        }
        else if(error){
            console.log('Something Went Wrong!');
        }
    };


    checkBoxHandler(event){
        //console.log(event.target.title);
        console.log('Checkbox clicked ! --- Id: '+event.target.title);

    }
    openClick(event){ 
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: event.target.title,
                objectApiName: 'Account',
                actionName: 'view'
            }
        });
    }
    editClick(event){
         this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: event.target.title,
                objectApiName: 'Account',
                actionName: 'edit'
            }
        });
    }
    conClick(event){
        this[NavigationMixin.Navigate]({
            type: 'standard__recordRelationshipPage',
            attributes: {
                recordId: event.target.title,
                objectApiName: 'Account',
                relationshipApiName: 'Contacts',
                actionName: 'view'
            }
        });  
    }
    oppClick(event){
         this[NavigationMixin.Navigate]({
            type: 'standard__recordRelationshipPage',
            attributes: {
                recordId: event.target.title,
                objectApiName: 'Account',
                relationshipApiName: 'Opportunities',
                actionName: 'view'
            }
        });  
    }

}