import { LightningElement } from 'lwc';
export default class ChildCalculatorLwcComp extends LightningElement {
    aValue;
    bValue;
    resultValue;

    inputHandler(event){
        if(event.target.name=='ValueA'){
            this.aValue=event.target.value;
            console.log(this.aValue);
        }else if(event.target.name=='ValueB'){
            this.bValue=event.target.value;
             console.log(this.bValue);
        }
    }

    calcHandler(event){
        if(event.target.label=='Sum'){
            this.resultValue=parseInt(this.aValue)+parseInt(this.bValue);
            
        }else if(event.target.label=='Sub'){
            this.resultValue=parseInt(this.aValue)-parseInt(this.bValue);
        }else if(event.target.label=='Mul'){
            this.resultValue=parseInt(this.aValue)*parseInt(this.bValue);
        }else if(event.target.label=='Div'){
            this.resultValue=parseInt(this.aValue)/parseInt(this.bValue);
        }
         console.log(this.resultValue);
    }

    childHandler(event){
        console.log('childHandler');
        const even=new CustomEvent('buttonclick',{
            detail: {
                aProp : this.aValue,
                bProp : this.bValue,
                resultProp : this.resultValue
            }
        });
        console.log('childHandler'+even.detail.aProp);
        this.dispatchEvent(even);
    }
}