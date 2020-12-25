trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> tasksList = new List<Task>();
    for(Opportunity opp : ([select Id from Opportunity where Id IN :Trigger.New and StageName= 'Closed Won'])){
        tasksList.add(new Task(Subject = 'Follow Up Test Task',
                             WhatId = opp.Id));
    }
    if (tasksList.size() > 0) {
		upsert tasksList;
    }
}