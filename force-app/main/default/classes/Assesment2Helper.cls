public class Assesment2Helper {
    
    public static void beforeInsertContact(List<Contact> conList){
        for(Contact con:conList){
            if(con.Salutation!=null && con.Salutation=='Mr.'){
                con.Gender__c='Male';
            }
            if(con.Salutation!=null && (con.Salutation=='Mis.' ||con.Salutation=='Mrs.')){
                con.Gender__c='Female';
            }
        }
    }
    
   //public  
  

}