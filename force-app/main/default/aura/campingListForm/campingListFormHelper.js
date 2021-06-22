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
    createExpense: function(component, newItem) {
        let createEvent = component.getEvent("addItem");
        createEvent.setParams({ "item": newItem });
        createEvent.fire();
        component.set("v.newItem",{'sobjectType':'Camping_Item__c',
                'Name': '',
                'Quantity__c': 0,
                'Price__c': 0,
                'Packed__c': false});
    },
})