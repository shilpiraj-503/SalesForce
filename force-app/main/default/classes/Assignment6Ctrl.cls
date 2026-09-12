public class Assignment6Ctrl {
	
    public Passenger__c pass {get;set;}
    public Ticket__c tick {get;set;}
    
    public Assignment6Ctrl(){
        pass= new Passenger__c();
        tick= new Ticket__c();
    }
    
    public PageReference toTicket(){
        
        PageReference obj=new PageReference('/apex/Ass6TicPage');
        return obj;
    }
    public PageReference toPassenger(){
        
        PageReference obj=new PageReference('/apex/Ass6Pass');
        return obj;
    }
    public PageReference toFinal(){
        PageReference page = new PageReference('/apex/Ass6FinalPage');
        return page;
    }
    public PageReference saveRecMethod(){
        System.debug('Passenger before insert ::'+pass);
        insert pass;
        System.debug('Passenger Info After Insert ::'+pass);
        tick.Passenger__c=pass.Name;
        insert tick;
        PageReference page = new PageReference('/'+tick.Id);
        return page;
    }
}