import { LightningElement,api} from 'lwc';
export default class ChildLwcComponent extends LightningElement {

    @api nameProp;

    @api handleFunc1(getData){
        alert(JSON.stringify(getData));         // extract data in stringify form
        alert('I am in child component');
        var fname=getData.FirstName;             //value by it's key
        var lname=getData.LastName;
        alert(fname);                       // trying to check data is coming or not
        alert(lname);
    }
}