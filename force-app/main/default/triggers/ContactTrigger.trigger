trigger ContactTrigger on Contact (before insert,after delete,before update,after undelete) {
    
    if(Trigger.isBefore && Trigger.isInsert){
        ContactTriggerHelper.CountContactCheck(Trigger.new);
    }
    else if(Trigger.isBefore && Trigger.isUpdate){
        
    }
    else if(Trigger.isAfter && Trigger.isDelete){
        
    }
    else if(Trigger.isAfter && Trigger.isUndelete){
        
    }
}