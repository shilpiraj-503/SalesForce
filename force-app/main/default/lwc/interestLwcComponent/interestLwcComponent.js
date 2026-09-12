import { LightningElement } from 'lwc';
export default class InterestLwcComponent extends LightningElement {

    amountProp;
    rateProp
    timeProp;
    interestProp;
    isDisp=false;

    valueOfAmount(event){
        this.amountProp=event.target.value;
    }
    valueOfRate(event){
        this.rateProp=event.target.value;
    }
    valueOfTime(event){
        this.timeProp=event.target.value;
    }
    interestValue(event){
        this.interestProp=(this.amountProp*this.rateProp*this.timeProp)/100;
        this.isDisp=true;
    }
}