import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
export default class NavFirstComp extends NavigationMixin(LightningElement) {
nameProp;
emailProp;

changeHandler(event){
    if(event.target.name=='name'){
        this.nameProp=event.target.value;
    }
    else if(event.target.name=='email'){
        this.emailProp=event.target.value;
    }
    
}
compNavigation(){
    var defination = {
            componentDef : 'c:navSecondComp',
            attributes: {
                name : this.nameProp,
                email : this.emailProp
            }
        }

    this[NavigationMixin.Navigate]({
        
        type: 'standard__webPage',
        attributes : {
            url : '/one/one.app#' + btoa(JSON.stringify(defination))
        }
    });

}
}