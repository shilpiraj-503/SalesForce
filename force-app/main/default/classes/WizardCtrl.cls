public class WizardCtrl {
    
		public Account acc {get;set;}
        public Contact con {get;set;}
    	public Opportunity opp {get;set;}
        
        public WizardCtrl(){
            acc = new Account();
            con = new Contact();
            opp = new Opportunity();
        }
    
    public PageReference goToCon(){
        PageReference page = new PageReference('/apex/CreateUIPage2');
         System.debug('Account Info before Insert ::'+acc);
        return page;
    }
   public PageReference goToOpp(){
        PageReference page = new PageReference('/apex/CreateUIPage3');
        return page;
    }
   public PageReference goToAcc(){
        PageReference page = new PageReference('/apex/CreateUIPage');
        return page;
    }
    public PageReference goToFinal(){
        PageReference page = new PageReference('/apex/CreateUIFinalPage');
        return page;
    }
    public PageReference saveRecMethod(){
        System.debug('Account Info before Insert ::'+acc);
        insert acc;
        System.debug('Account Info After Insert ::'+acc.Id);
        con.AccountId=acc.Id;
        insert con;
        opp.AccountId=acc.Id;
        insert opp;
        PageReference page = new PageReference('/'+acc.Id);
        return page;
    }
}