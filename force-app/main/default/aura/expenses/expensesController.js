/**
 * @description       :
 * @test class        :
 * @author            : adarsha_shah@persistent.com
 * @reviewer          :
 * @last modified on  : 23-05-2021
 * @last modified by  : adarsha_shah@persistent.com
 * Modifications Log
 * Ver   Date         Author                        Modification
 * 1.0   23-05-2021   adarsha_shah@persistent.com   Initial Version
 **/
({
    doInit: function (component, event, helper) {
        // Create the action
        let action = component.get('c.getExpenses');
        // Add callback behavior for when response is received
        action.setCallback(this, function (response) {
            let state = response.getState();
            if (state === 'SUCCESS') {
                component.set('v.expenses', response.getReturnValue());
            } else {
                console.log('Failed with state: ' + state);
            }
        });
        // Send action off to be executed
        $A.enqueueAction(action);
    },

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
    },

    handleUpdateExpense: function(component, event, helper) {
        let updatedExp = event.getParam("expense");
        helper.updateExpense(component, updatedExp);
    }
});