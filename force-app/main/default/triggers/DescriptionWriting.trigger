trigger DescriptionWriting on Student__c (before insert) {
    
    if(Trigger.isBefore && Trigger.isInsert){
        StudentTriggerHelper.descriptionChange(Trigger.new);
    }

}