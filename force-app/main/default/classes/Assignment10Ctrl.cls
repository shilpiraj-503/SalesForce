public class Assignment10Ctrl {
    public List<AccWrapperClass> wrapperList{get;set;}
    public String searchName{get;set;}
    public List<Ticket__c> tkt{get;set;}


    public Assignment10Ctrl(){
        wrapperList = new List<AccWrapperClass>();
        List<Passenger__c> psg = [SELECT Name,First_Name__c,Last_Name__c,Email__c,Address__c
              FROM Passenger__c];
        Integer count = 1;
         for(Passenger__c p : psg){
             AccWrapperClass objRef = new AccWrapperClass();
             objRef.isCount = count;
             objRef.psg = p;
             objRef.isSelect = false;
             wrapperList.add(objRef);
             count++;
         }
    }

     
     public void relConMethod(){
        Set<Id> ps= new Set<Id>();
        for(AccWrapperClass wrap:wrapperList){
            if(wrap.isSelect == true){
                ps.add(wrap.psg.Id); 
            }
        }
         tkt = [SELECT Name,Passenger__c,From__c,To__c,Total_Fare__c,Total_KM__c
              FROM Ticket__c WHERE Passenger__r.Id IN: ps];
     }

    public class AccWrapperClass {
        public Integer isCount {get;set;}
        public Passenger__c psg{get;set;}
        public Boolean isSelect{get;set;}

        public AccWrapperClass(){
            isCount = 1;
            psg = new Passenger__c();
            isSelect = false;
        }

    }

 

}