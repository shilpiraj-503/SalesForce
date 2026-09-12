@isTest
public class AccountInsertTest {

    @isTest
    public static void TestingClass(){
        AccountInsert obj=new AccountInsert();
        obj.saveMethod();
        List<Account> accList=[SELECT Name FROM Account];
        Integer Count=accList.size();
        
        System.assertEquals(1,count);// how many records -> 1
    }
    
    @isTest
    public static void secondMethod(){
        
        TestFactory.insertAccount();
        AccountInsert obj=new AccountInsert();
        obj.updateMethod();
        
        Account acc1=[SELECT Name,Industry FROM Account];
        System.assertEquals('Banking',acc1.Industry);
        
    } 
    @isTest
    public static void deleteMethodCall(){
        TestFactory.insertAccount();
        
         Integer count=[SELECT Count() FROM Account];
        System.assertEquals(1,count);
        
        AccountInsert obj=new AccountInsert();
        obj.deleteMethod();
        
        Integer count1=[SELECT Count() FROM Account];
        System.assertEquals(0,count1);
        
    } 
    
}