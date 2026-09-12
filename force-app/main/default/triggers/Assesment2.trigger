trigger Assesment2 on Contact (before insert,before update, after undelete) {
    
    if(Trigger.isBefore && Trigger.isInsert){
        
        Assesment2Helper.beforeInsertContact(Trigger.new);
        
    }else if(Trigger.isBefore && Trigger.isUpdate){
        Assesment2Helper.beforeInsertContact(Trigger.new);
        
    }else if(Trigger.isAfter && Trigger.isUndelete){
        Assesment2Helper.beforeInsertContact(Trigger.new);
        
    }

}