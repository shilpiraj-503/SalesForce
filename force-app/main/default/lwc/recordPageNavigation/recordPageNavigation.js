import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
//@wire(CurrentPageReference)
export default class RecordPageNavigation extends NavigationMixin( LightningElement ) {

    recId='a005j00000SZYCQAA5';

    handleClick(){
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: '0015j00001L4xI0AAJ',
                objectApiName: 'Account',
                actionName: 'view'
            }
        });

    }
    accHandler(){
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: '0015j00001L4xI0AAJ',
                objectApiName: 'Account',
                actionName: 'edit'
            }
        });
    }
    handleClickst(){
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: 'a005j00000SZYCQAA5',
                objectApiName: 'Student__c',
                actionName: 'view'
            }
        });

    }
    accHandlerst(){
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: this.recId,
                objectApiName: 'Student__c',
                actionName: 'edit'
            }
        });
    }
}