public class Assignment4 {
    public Passenger__c psg {get;set;}
    
    public Assignment4(){
        psg=new Passenger__c();
    }
    
    public PageReference insertPassenger(){
        insert psg;
        PageReference pg=new PageReference('/'+psg.Id);
        return pg;
    }
}