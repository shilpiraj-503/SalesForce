import { LightningElement } from 'lwc';
export default class FifthLwcComponent extends LightningElement {

    firstName;
    lastName;
    finalName;
    isDispName=false;

      firstFunc(event){
          this.firstName=event.target.value;
      }  
        secondFunc(event){
          this.lastName=event.target.value;
      }  

    additionFunc(event){
        this.isDispName=true;
        
        this.finalName=this.firstName+' '+this.lastName;
    }
    handleClick(event){
        this.isDispName=false;
    }
}