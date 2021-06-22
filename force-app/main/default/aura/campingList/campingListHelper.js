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
    createitem: function(component, item) {
        let action = component.get("c.saveItem");
        action.setParams({
            "item": item
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
    },
})