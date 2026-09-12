public class FutureMethodExample2 {
    public void mixedDmlException(){
        
        Profile p = [SELECT Id FROM Profile WHERE Name='Identity User'];
         UserRole r = [SELECT Id FROM UserRole WHERE Name='COO'];
         User u = new User(alias = 'jsmith', email='shilpi.raj.ecolab@gmail.com', 
                emailencodingkey='UTF-8', lastname='raj', 
                languagelocalekey='en_US', 
                localesidkey='en_US', profileid = p.Id, userroleid = r.Id,
                timezonesidkey='America/Los_Angeles', 
                username='shilpi@raj78.com');
        insert u;
        secondMethod();
    }
    @future
    public static void secondMethod(){
        Account acc=new Account();
        acc.Name='Mixed DML Exception';
        acc.Type='Other';
        acc.Industry='Technology';
        insert acc;
    }
}