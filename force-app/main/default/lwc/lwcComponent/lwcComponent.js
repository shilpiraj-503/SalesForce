import { LightningElement } from 'lwc';
export default class LwcComponent extends LightningElement {

    heightProp;
    weightProp;
    bmiProp;
    isDisp=false;

    valueOfheight(event){
       this.heightProp=event.target.value; 
    }
     valueOfweight(event){
       this.weightProp=event.target.value; 
    }
    bmiValue(event){
        this.isDisp=true;
        this.bmiProp=this.weightProp/(this.heightProp*this.heightProp);
    }
}