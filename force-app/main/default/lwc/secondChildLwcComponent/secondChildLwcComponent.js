import { LightningElement,api } from 'lwc';
export default class SecondChildLwcComponent extends LightningElement {
    nameProp;

  nameHandler(event){
      this.nameProp=event.target.value;
      console.log('NameProp - '+this.nameProp);
  }
  clickHandler(){
      const evt=new CustomEvent('buttonclick',{
          detail:{
              firstName : this.nameProp
          }
      });
      this.dispatchEvent(evt);
  }
}