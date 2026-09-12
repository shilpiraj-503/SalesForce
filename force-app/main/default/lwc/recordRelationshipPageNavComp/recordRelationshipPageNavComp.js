import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
export default class RecordRelationshipPageNavComp extends  NavigationMixin( LightningElement) {
    conHandler(){
        this[NavigationMixin.Navigate]({
            type: 'standard__recordRelationshipPage',
            attributes: {
                recordId: '0015j00001BOgmtAAD',
                objectApiName: 'Account',
                relationshipApiName : 'Contacts',
                actionName: 'view'
            }
        });

    }
    oppHandler(){
        this[NavigationMixin.Navigate]({
            type: 'standard__recordRelationshipPage',
            attributes: {
                recordId: '0015j00001BOgmtAAD',
                objectApiName: 'Account',
                relationshipApiName : 'Opportunities',
                actionName: 'view'
            }
        });

    }
}