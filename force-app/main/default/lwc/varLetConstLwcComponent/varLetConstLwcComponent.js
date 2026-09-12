import { LightningElement } from 'lwc';
export default class VarLetConstLwcComponent extends LightningElement {

    nameProp;
    isFlag=false;

    handleClickFunc(event){
        //alert('hi');
        if(this.isFlag==false){
            const companyName='Groviya';
            alert(companyName);
            companyName='Ecolab';
            alert(companyName);
        }
        alert(companyName);
    }
}