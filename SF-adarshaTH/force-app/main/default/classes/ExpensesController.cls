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
public with sharing class ExpensesController {
    // STERN LECTURE ABOUT WHAT'S MISSING HERE COMING SOON
    @AuraEnabled
    public static List<Expense__c> getExpenses() {
        return [
            SELECT
                Id,
                Name,
                Amount__c,
                Client__c,
                Date__c,
                Reimbursed__c,
                CreatedDate
            FROM Expense__c WITH SECURITY_ENFORCED
        ];
    }
    @AuraEnabled
    public static Expense__c saveExpense(Expense__c expense) {
        // Perform isUpdateable() checking first, then
        upsert expense;
        return expense;
    }
}