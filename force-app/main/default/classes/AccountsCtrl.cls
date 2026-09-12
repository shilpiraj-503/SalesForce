public class AccountsCtrl {
    //public String name {get;set;}
    //public String rating {get;set;}
    //public Integer emp {get;set;}
    
    public Account acc {get;set;}
    
    public AccountsCtrl(){
        acc=new Account();
    }
    
    public PageReference saveAcc(){
        insert acc;
        System.debug('Account Id:: '+acc.Id);
        PageReference page =new PageReference('/'+acc.Id);
        return page;
    }
}
    
   /* public PageReference saveAcc()
    {
        System.debug('Name:: '+name);
        Account acc=new Account();
        
        acc.Name=name;
        acc.Rating=rating;
        acc.NumberOfEmployees =emp;
        insert acc;
        System.debug('account Id '+ acc.Id);
        PageReference page=new PageReference('/'+acc.Id);
        return page;
    }
}*/