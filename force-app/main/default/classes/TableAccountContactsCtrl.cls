public class TableAccountContactsCtrl {
    public List<WrapperClass> wrapList {get;set;}
    public List<Contact> conList {get;set;}
    public String searchName {get;set;}
    
    public TableAccountContactsCtrl(){
        wrapList=new List<WrapperClass>();
       conList=new List<Contact>();
        List<Account> accList = [SELECT Name,Type,Industry,Rating
                              FROM Account];
        //data is in accList, and we need it to be in wraplist(which is empty now)
        Integer count =1;
        for(Account acc : accList)
        {
            WrapperClass objRef = new WrapperClass();
            objRef.isCount=count++;
            objRef.acc=acc;
            objRef.isSelect=false;
         	wrapList.add(objRef);       
        }
    }
    
    public void searchAccRec(){
        wrapList=new List<WrapperClass>();
        String strName=searchName+'%';
       
        List<Account> accList = [SELECT Name,Type,Industry,Rating
                              FROM Account
                                WHERE Name
                                LIKE: strName];
        //data is in accList, and we need it to be in wraplist(which is empty now)
        Integer count =1;
        for(Account acc : accList)
        {
            WrapperClass objRef = new WrapperClass();
            objRef.isCount=count++;
            objRef.acc=acc;
            objRef.isSelect=false;
         	wrapList.add(objRef);       
        }
    }
    
    public void relConMethod(){
        Set<Id> accIds=new Set<Id>();
        for(WrapperClass w: wrapList){
            if(w.isSelect)
            {
                accIds.add(w.acc.Id);
            }
        }
        conList=[SELECT FirstName,LastName,Phone,Email,Account.Name
                FROM Contact
                Where AccountId IN: accIds];
    }
    
    //wrapper class (inner)
    public class WrapperClass{
        public Integer isCount {get;set;}
        public Account acc {get;set;}
        public Boolean isSelect {get;set;}
        
        public WrapperClass(){
            isCount=1;
            acc=new Account();
            isSelect = false;
        }
    }
    
}