public class Assignment5 {
	 public Ticket__c psg {get;set;}
    
    public Assignment5(){
        psg=new Ticket__c();
    }
    
    public PageReference insertTicket(){
        insert psg;
        PageReference pg=new PageReference('/'+psg.Id);
        return pg;
    }
}