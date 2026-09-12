import { LightningElement } from 'lwc';
export default class CalcLwcComponent extends LightningElement {

    aProp;
    bProp;
    resultProp;
    isDisp=false;

    valueOfA(event){
        this.aProp=event.target.value;
    }
    valueOfB(event){
        this.bProp=event.target.value;
    }
    sumOfNo(event){
        this.resultProp=parseInt(this.aProp)+parseInt(this.bProp);
        this.isDisp=true;
    }
    subOfNo(event){
        this.resultProp=this.aProp-this.bProp;
        this.isDisp=true;
    }
    mulOfNo(event){
        this.resultProp=this.aProp*this.bProp;
        this.isDisp=true;
    }
    divOfNo(event){
        this.resultProp=this.aProp/this.bProp;
        this.isDisp=true;
    }

}