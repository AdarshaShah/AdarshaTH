global class DailyLeadProcessor implements Schedulable {
    global void execute(SchedulableContext ctx) {
        list<lead> leads = [select LeadSource from lead where LeadSource = null limit 200];
        for(lead leadItem: leads){
            leadItem.LeadSource = 'Dreamforce';
        }
        update leads;
    }
}