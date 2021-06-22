/**
 * @description       :
 * @test class        :
 * @author            : adarsha_shah@persistent.com
 * @reviewer          :
 * @last modified on  : 05-29-2021
 * @last modified by  : Adarsha Shah
 * Modifications Log
 * Ver   Date         Author                        Modification
 * 1.0   23-05-2021   adarsha_shah@persistent.com   Initial Version
 **/
({
    doInit: function (component, event, helper) {
        // Create the action
        let action = component.get('c.getItems');
        // Add callback behavior for when response is received
        action.setCallback(this, function (response) {
            let state = response.getState();
            if (state === 'SUCCESS') {
                component.set('v.items', response.getReturnValue());
            } else {
                console.log('Failed with state: ' + state);
            }
        });
        // Send action off to be executed
        $A.enqueueAction(action);
    },

    handleAddItem: function(component, event, helper){
        let action = component.get("c.saveItem");
        action.setParams({
            "item": event.getParam("item")
        });
        action.setCallback(this, function(response){
            let state = response.getState();
            if (state === "SUCCESS") {
                let items = component.get("v.items");
                items.push(response.getReturnValue());
                component.set("v.items", items);
            }
        });
        $A.enqueueAction(action);
    }
});