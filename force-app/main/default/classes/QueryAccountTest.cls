@isTest
public class QueryAccountTest {
    testMethod static void testingQueryAccount(){
        Account acc=new Account();
        acc.Name='ShilpiTesting';
        acc.Type='Prospect';
        acc.Industry='Banking';
        insert acc;
        QueryAccount obj=new QueryAccount();
        obj.queryAccount();
    }
    
}