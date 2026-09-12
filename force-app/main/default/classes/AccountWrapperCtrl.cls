public class AccountWrapperCtrl {
  // public List<Id> idList=new List<Id>();
   // public static List<Contact> conlist=new List<Contact>();
    
    @AuraEnabled
    public static List<WrapperClass> accountvalues(){
        
        List<WrapperClass> wrapList=new List<WrapperClass>();
        List<Account> accList=[SELECT Name,Type,Rating,Industry 
                               FROM Account 
                               WHERE Id IN (SELECT AccountID
                                           FROM Contact)];
        Integer count =1;
        for(Account acc:accList){
            WrapperClass wrap=new WrapperClass();
            wrap.no=count++;
            wrap.acc=acc;
            wrap.checkbox=false;
            wrapList.add(wrap);
        }
        return wrapList;
    }
    @AuraEnabled
    public static List<Contact> contactList(Id idcon){
        List<Contact> con=[SELECT LastName,Phone,Email 
                     FROM Contact
                    WHERE AccountId = :idcon];
       //conlist.add(con);
        return con;
    }

    public class WrapperClass{
        @AuraEnabled
        public Integer no;
        @AuraEnabled
        public Boolean checkBox;
        @AuraEnabled
        public Account acc;
        
        WrapperClass(){
            no=1;
            checkBox=false;
            acc=new Account();
        }
    }
}