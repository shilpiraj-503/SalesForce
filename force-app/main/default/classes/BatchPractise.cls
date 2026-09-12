public class BatchPractise implements Database.Batchable<sObject>{
    
   public Database.QueryLocator start(Database.BatchableContext bc){
       
        return Database.getQueryLocator([SELECT Student_Name__c,Description__c,Student_Phone__c
                                        FROM Student__c]);
    }
    public void execute(Database.BatchableContext bc, List<Student__c> stdList){
        System.debug(stdList);
        for(Student__c std:stdList){
            std.Description__c='In the system since long time.';
           // std.Student_Phone__c='243567867';
            //system.debug(std.Student_Phone__c);
        }
        update stdList;
    }    
    public void finish(Database.BatchableContext bc){
        System.debug('Updated');
    }
}