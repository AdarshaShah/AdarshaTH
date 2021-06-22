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
    createExpense: function(component, newExpense) {
        let createEvent = component.getEvent("createExpense");
        createEvent.setParams({ "expense": newExpense });
        createEvent.fire();
    },
})