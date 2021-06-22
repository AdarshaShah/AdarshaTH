import { LightningElement, track } from 'lwc';
//import abc from '@salesforce/resourceUrl/demoAdapterLogo';   //static resource
//import attentionsymbol from '@salesforce/resourceUrl/attentionsymbol';  //static resource

export default class ComBureau extends LightningElement {

    scomboboxClicked;
    @track evalClass="slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click";
    // Handles click on the 'Show/hide content' button
    handlecomboboxClick() {
        this.comboboxClicked = !this.comboboxClicked; //set to true if false, false if true.
        this.evalClass = this.comboboxClicked ? 'slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click slds-is-open' : 'slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click';
    }
    @track value = '';

    get options() {
        return [
            { label: 'Sales', value: 'option1' },
            { label: 'Force', value: 'option2' },
            { label: 'item', value: 'option3' },
            { label: 'fake', value: 'option4' },
        ];
    }
}