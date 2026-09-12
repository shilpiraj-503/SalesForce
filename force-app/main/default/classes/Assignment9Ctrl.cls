public class Assignment9Ctrl {
    public List<Passenger__c> pList {get;set;}
    public List<Ticket__c> tList {get;set;}
    public Boolean isPassenger{get;set;}
    public Boolean isTicket{get;set;}
    
    public Assignment9Ctrl(){
        isPassenger = false;
        isTicket = false;
    }
    
    public void displayPassenger(){
        isPassenger = true;
         isTicket = false;
        pList=[SELECT Name,First_Name__c,Last_Name__c,Email__c,Address__c
              FROM Passenger__c];
    }
    public void displayTicket(){
        isPassenger = false;
        isTicket = True;
        tList=[SELECT Name,Passenger__c,From__c,To__c,Total_Fare__c,Total_KM__c
              FROM Ticket__c];
    }
}