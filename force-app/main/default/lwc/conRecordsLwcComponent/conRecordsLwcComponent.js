import { LightningElement,wire } from 'lwc';
import conRecords from '@salesforce/apex/contactLwcCtrl.getContactRecords';
import image from '@salesforce/resourceUrl/lwcImage';
export default class ConRecordsLwcComponent extends LightningElement {
    imageProp=image;
    nameProp='';
    conList;
    @wire (conRecords,{name: '$nameProp'}) conList;

    searchHandler(event){
        this.nameProp=event.target.value;
    }
    clickHandler(event){
        var conId=event.target.value;
        window.open('/'+conId);
    }
}