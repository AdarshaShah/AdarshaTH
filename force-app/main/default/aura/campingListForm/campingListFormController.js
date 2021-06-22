/**
 * @description       : 
 * @author            : Adarsha Shah
 * @group             : 
 * @last modified on  : 05-29-2021
 * @last modified by  : Adarsha Shah
 * Modifications Log 
 * Ver   Date         Author         Modification
 * 1.0   05-29-2021   Adarsha Shah   Initial Version
**/
({
    clickCreate: function (component, event, helper) {
        var validitem = component
            .find('itemform')
            .reduce(function (validSoFar, inputCmp) {
                // Displays error messages for invalid fields
                inputCmp.showHelpMessageIfInvalid();
                return validSoFar && inputCmp.get('v.validity').valid;
            }, true);

        // If we pass error checking, do some real work
        if (validitem) {
            // Create the new item
            var newitem = component.get('v.newitem');
            console.log('Create item: ' + JSON.stringify(newitem));
            helper.createitem(component, newitem);
        }
    }
})