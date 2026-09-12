trigger CountOfcourses on Teacher__c (before insert) {
    if(Trigger.isInsert && Trigger.isBefore){
        
    }else if(Trigger.isUpdate && Trigger.isBefore){
        
    }

}