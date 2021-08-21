trigger ClosedOpportunityTrigger on Opportunity (before insert,before update,before delete,after insert,after update,after delete,after undelete) {

if(Trigger.isAfter && (Trigger.isInsert || Trigger.isUpdate)){
    
    List<Task> taskList= new List<Task>(); 

    for(Opportunity op : Trigger.new){
        
        if(op.StageName == 'Closed Won'){
        
            taskList.add( new Task(Subject='Follow Up Test Task',
                                    WhatId=op.Id
                                ) 
            );
        
        }
    
    }
    insert taskList;
    }
    

}