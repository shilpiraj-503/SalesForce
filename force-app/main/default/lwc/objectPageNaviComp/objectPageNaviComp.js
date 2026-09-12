import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
export default class ObjectPageNaviComp extends NavigationMixin(LightningElement ){

    fileHandler(){
        this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                objectApiName: 'ContentDocument',
                actionName: 'home'
            }
        });
    }
    reportHandler(){
        this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                objectApiName: 'Report',
                actionName: 'home'
            }
        });
    }
    contactHandler(){
         this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                objectApiName: 'Contact',
                actionName: 'new'
            }
        });
    }
    lisViewHandler(){
         this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                objectApiName: 'Account',
                actionName: 'list'
            },
            state : {
                filterName: 'NewLastWeek'
            }
        });
    }
    lisViewStdHandler(){
         this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                objectApiName: 'Student__c',
                actionName: 'list'
            },
            state : {
                filterName: 'First_Year_Student'
            }
        });
    }
}