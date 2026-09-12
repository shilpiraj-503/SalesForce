/*  keyword = trigger
 *  triggerName = AccountTrigger
 *  keyword = on
 *  sObject = Account
 *  Trigger Event = before insert
 */

trigger AccountTrigger on Account (before insert, after insert,before update, after update,before delete,after delete, after Undelete) {

List<Account> accList=Trigger.new; // stores new data 
   
    System.debug(accList);
    if(Trigger.isBefore && Trigger.isInsert){
         AccountTriggerHelper.duplicateName(accList);
    }
    else if(Trigger.isAfter && Trigger.isInsert){
       
    }else if(Trigger.isBefore && Trigger.isUpdate){ 
       AccountTriggerHelper.duplicateName(accList);
    }else if(Trigger.isAfter && Trigger.isUpdate){
    }
    else if(Trigger.isBefore && Trigger.isDelete)
    {
       
    }
    else if(Trigger.isAfter && Trigger.isUndelete)
    {
     AccountTriggerHelper.duplicateName(accList);
    }
    
}