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
        var mydate = component.get("v.expense.Date__c");
        if (mydate) {
            component.set("v.formatdate", new Date(mydate));
        }
    },

    clickReimbursed: function (component, event, helper) {
        let expense = component.get("v.expense");
        let updateEvent = component.getEvent("updateExpense");
        updateEvent.setParams({ "expense": expense });
        updateEvent.fire();
    },

})