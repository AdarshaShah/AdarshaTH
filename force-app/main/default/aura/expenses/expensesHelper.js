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
    createExpense: function(component, expense) {
        let action = component.get("c.saveExpense");
        action.setParams({
            "expense": expense
        });
        action.setCallback(this, function(response){
            let state = response.getState();
            if (state === "SUCCESS") {
                let expenses = component.get("v.expenses");
                expenses.push(response.getReturnValue());
                component.set("v.expenses", expenses);
            }
        });
        $A.enqueueAction(action);
    },

    updateExpense: function(component, expense) {
        let action = component.get("c.saveExpense");
        action.setParams({
            "expense": expense
        });
        action.setCallback(this, function(response){
            let state = response.getState();
            if (state === "SUCCESS") {
                // do nothing!
            }
        });
        $A.enqueueAction(action);
    },
})