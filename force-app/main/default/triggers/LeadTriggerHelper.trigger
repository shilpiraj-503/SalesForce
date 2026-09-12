trigger LeadTriggerHelper on Lead (before insert) {

    List<Lead> leadList=Trigger.new;
    System.debug(leadList);
    
    ApexTriggerHelperLead.beforeInsertMethod(leadList);

}