import { LightningElement, track } from 'lwc';
export default class ParentCalculatorLwcComp extends LightningElement {
    @track aProps;
   @track bProps;
    @track resultProps;
    @track isDisp=false;

    parentHandler(event){
        console.log('In parent Handler');
        this.aProps=event.detail.aProp;
        this.bProps=event.detail.bProp;
        this.resultProps=event.detail.resultProp;
        console.log(this.aProps);
        console.log(this.bProps);
        console.log(this.resultProps);
        this.isDisp=true;
    }
    newResults(event){
        this.isDisp=false;
    }

}