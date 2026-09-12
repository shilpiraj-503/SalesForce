@isTest
public class BatchAccountTest {
    
    @isTest
    public static void updateExecute(){
       TestFactory.insertAccount();
        
        BatchAccount obj=new BatchAccount();
        test.startTest();
        Database.executeBatch(obj);
        test.stopTest();
        
        Account acc1=[SELECT Name,Industry,Active__c FROM Account];
        System.assertEquals('Technology',acc1.Industry);
        System.assertEquals('Yes',acc1.Active__c);
    }

}