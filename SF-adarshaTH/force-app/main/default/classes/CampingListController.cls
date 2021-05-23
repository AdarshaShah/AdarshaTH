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
public with sharing class CampingListController {
    @AuraEnabled
    public static List<Camping_Item__c> getItems () {
        return [
            SELECT
                Id,
                Name,
                price__c,
                Packed__c,
                Quantity__c,
                CreatedDate
            FROM Camping_Item__c WITH SECURITY_ENFORCED
        ];
    }
    
    @AuraEnabled
    public static Camping_Item__c saveItem (Camping_Item__c item) {
        // Perform isUpdateable() checking first, then
        upsert item;
        return item;
    }
}