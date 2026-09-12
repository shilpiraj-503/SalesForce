import { LightningElement,wire } from 'lwc';
import oppRec from '@salesforce/apex/DisplayOppLwcCtrl.getOppData';  
export default class OppRecordsLwcComponent extends LightningElement {
oppList;
nameProp='';
//@wire (functionName, {apexclassvar: $jspropName}) local var
@wire (oppRec,{name:'$nameProp'}) oppList;

    searchHandler(event){
        this.nameProp=event.target.value;
        console.log('Name :: '+this.nameProp);
    }
}