public class Assesment1Ctrl {
    
    public List<WrapperClass> wrapper {get;set;}
    public List<Opportunity> oppList {get;set;}

    public Assesment1Ctrl(){
        wrapper=new List<WrapperClass>();
        Integer count=1;
        List<Account> accList=[SELECT Name,Type,Phone,Rating FROM Account];
        for(Account acc1:accList){
            WrapperClass wrap=new WrapperClass();
            wrap.isCount=count++;
            wrap.acc=acc1;
            wrap.isSelected=false;
            wrapper.add(wrap);
        }
    }
    public void relatedContacts(){
        Integer count=1;
        List<Id> accId=new List<Id>();
        for(WrapperClass wrap:wrapper){
            if(wrap.isSelected==true){
                accId.add(wrap.acc.Id);
            }
        }
        oppList=[SELECT Name,StageName,Type,LeadSource FROM Opportunity WHERE AccountId IN: accId];
        
    }
	
    public class WrapperClass{
        public Integer isCount {get;set;}
        public Account acc{get;set;}
        public Boolean isSelected{get;set;}
        
       public WrapperClass()
        {
            isCount=1;
            acc=new Account();
            isSelected=false;
        }
    }
}