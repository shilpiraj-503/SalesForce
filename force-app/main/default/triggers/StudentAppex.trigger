trigger StudentAppex on Student__c (before insert,before update, after undelete) {
    if(Trigger.isBefore && Trigger.isInsert){
       // StudentHelperAppex.dispErrorWhwenEnterDuplicateEmail(Trigger.new);
        
    }else if (Trigger.isBefore && Trigger.isUpdate){
       // StudentHelperAppex.dispErrorUpdateDuplicateEmail(Trigger.new,Trigger.oldMap);
        
    }else if (Trigger.isAfter && Trigger.isUndelete){
       // StudentHelperAppex.dispErrorWhwenEnterDuplicateEmail(Trigger.new);
        
    }
	
    
}