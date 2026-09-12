import { LightningElement } from 'lwc';
import {NavigationMixin} from 'lightning/navigation';       //step 1:: import navigation
export default class NavLdsComp extends NavigationMixin(LightningElement) { // step 2 ::


    homePageHandler(event){
            this[NavigationMixin.Navigate]({
                type: 'standard__namedPage',
                attributes : {
                    pageName : 'home'
                }
            });
    }
    chatterPageHandler(){
        this[NavigationMixin.Navigate]({
                type: 'standard__namedPage',
                attributes : {
                    pageName : 'chatter'
                }
            });
    }
}