public class Assignment8Ctrl {
   public List<Passenger__c> pass {get;set;}
    public String searchVar {get;set;}
    
    public Assignment8Ctrl(){
        pass=[SELECT Name,First_Name__c,Last_Name__c,Email__c,Address__c
              FROM Passenger__c];
        System.debug(pass);      
    }
    public void searchPass(){
        String st=searchVar+'%';
        pass=[SELECT Name,First_Name__c,Last_Name__c,Email__c,Address__c
              FROM Passenger__c
             WHERE First_Name__c
             LIKE : st];
    }
}