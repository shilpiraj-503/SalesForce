import { LightningElement,wire } from 'lwc';
import {fireEvent} from 'c/pubsComp';
import {CurrentPageReference} from 'lightning/navigation';
export default class PublishSecondComp extends LightningElement {
    @wire (CurrentPageReference) pageRef;
fNameProp;
lNameProp;

nameHandler(event){
    if(event.target.label=='FirstName')
    {
      this.fNameProp=event.target.value;
    } else if(event.target.label=='LastName')
    {
      this.lNameProp=event.target.value;
    }
}
clickHandler(event){
    const result=this.fNameProp+' '+this.lNameProp;
    console.log(result);
    var data={
        'Result' : result
    };

    fireEvent(this.pageRef,'secondEvt',data);
}
}