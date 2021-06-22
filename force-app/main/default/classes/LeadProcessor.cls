global class LeadProcessor implements 
    Database.Batchable<sObject>, Database.Stateful {
    
    // instance member to retain state across transactions
    global Integer recordsProcessed = 0;
    global Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(
            'SELECT ID, LeadSource from lead'
        );
    }
    global void execute(Database.BatchableContext bc, List<lead> scope){
        // process each batch of records
        List<lead> leads = new List<lead>();
        for (lead leaditem : scope) {
            leaditem.LeadSource = 'Dreamforce';
        }
        update leads;
    }    
    global void finish(Database.BatchableContext bc){
        System.debug(recordsProcessed + ' records processed. Shazam!');
        AsyncApexJob job = [SELECT Id, Status, NumberOfErrors, 
            JobItemsProcessed,
            TotalJobItems, CreatedBy.Email
            FROM AsyncApexJob
            WHERE Id = :bc.getJobId()];
    }    
}