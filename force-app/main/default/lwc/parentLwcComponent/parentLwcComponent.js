import { LightningElement } from 'lwc';
export default class ParentLwcComponent extends LightningElement {

    nameProp='shilpi';

    parentHandlerFunc(){                                // function is called when button is clicked
        var compVar=this.template.querySelector('c-child-lwc-component');        //child component is called
        var sendData={FirstName: 'shilpi',
        LastName: 'raj'
        };                                            //creating a data to be sent
        compVar.handleFunc1(sendData);               // calling the function of above component
    }
}