public class StudentExample {
    //custom objects
	public Student__c std;
    
    public StudentExample(){
        std= new Student__c();
        
    }
    
    public void insertStudent(){
        std.Student_Name__c='Arav';
        std.Student_Deposit_Fees__c=20000;
        std.Student_Phone__c='65789456';
        std.Student_Year__c='First year';
        std.Student_State__c='Bihar';
        std.City__c='Patna';
       insert std;
        System.debug('Student record Inserted! '+std.Id);
        
    }
}