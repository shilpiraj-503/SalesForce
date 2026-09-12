import { LightningElement,api } from 'lwc';
export default class FirstChildLwcComponent extends LightningElement {

    @api nameProps;
    @api phoneProps;
    @api emailProps;

}