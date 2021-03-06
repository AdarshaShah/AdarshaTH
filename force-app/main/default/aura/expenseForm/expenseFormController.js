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
        var validExpense = component
            .find('expenseform')
            .reduce(function (validSoFar, inputCmp) {
                // Displays error messages for invalid fields
                inputCmp.showHelpMessageIfInvalid();
                return validSoFar && inputCmp.get('v.validity').valid;
            }, true);

        // If we pass error checking, do some real work
        if (validExpense) {
            // Create the new expense
            var newExpense = component.get('v.newExpense');
            console.log('Create expense: ' + JSON.stringify(newExpense));
            helper.createExpense(component, newExpense);
        }
    }
})