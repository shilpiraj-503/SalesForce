public class SOQL_Custom {
    
	 public void queryMethod(){
         //course is parent here
        List <Course__c> conList=[SELECT Name,Course_fees__c,Course_Duration__c, Teacher__r.Name 
                                  FROM Course__c];//__r for relationship
        for(Course__c con: conList){
            System.debug('Name :: '+con.Name);
            System.debug('Fees :: '+con.Course_fees__c);
            System.debug('Duration :: '+con.Course_Duration__c);
            System.debug('Teacher Name :: '+con.Teacher__r.Name);
            System.debug('\n');
        }
    }
     public void secondMethod(){
        List <Teacher__c> accList=[SELECT Name,Teacher_Phone__c,
                                (SELECT Name,Course_fees__c,Course_Duration__c
                                FROM Courses__r)
                               FROM Teacher__c];//__r for relationship
         
        for( Teacher__c acc: accList){ // object creation so no __r
            System.debug('Name :: '+acc.Name);
            System.debug('Phone :: '+acc.Teacher_Phone__c);
           
            List <Course__c> conList=acc.Courses__r;	//__r as here course is showing relationship
            // no __r cause this one is data type
            // so to fetch the data from related object use __r, for initialisation use __c
            
            for(Course__c con: conList){
            System.debug('Name :: '+con.Name);
            System.debug('FEES :: '+con.Course_fees__c);
            System.debug('Phone :: '+con.Course_Duration__c);
            }
             System.debug('\n');
        } 
     }
    
}