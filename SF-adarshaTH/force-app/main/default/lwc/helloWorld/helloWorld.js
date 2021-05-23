import { LightningElement, track } from 'lwc';
export default class HelloWorld extends LightningElement {

    @track greeting = 'World';
    changeHandler(event) {
        this.greeting = event.target.value;
    }

    comboboxClicked;
    @track evalClass="slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click";
    // Handles click on the 'Show/hide content' button
    handlecomboboxClick() {
        this.comboboxClicked = !this.comboboxClicked; //set to true if false, false if true.
        this.evalClass = this.comboboxClicked ? 'slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click slds-is-open' : 'slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click';
    }
}