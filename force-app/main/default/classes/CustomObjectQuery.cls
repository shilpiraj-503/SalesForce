public class CustomObjectQuery {
	public List<Student__c> studentList;
    public void firstMethod(){
        studentList=[SELECT Student_Name__c,Student_Phone__c,Name,Student_Email__c,Student_DOB__c 
                     FROM Student__c];
        for(Student__c cont : studentList){
            System.debug('Student Name '+cont.Student_Name__c);
            System.debug('Student Phone '+cont.Student_Phone__c);
            System.debug('Student ID '+cont.Name);
            System.debug('Student Email '+cont.Student_Email__c);
            System.debug('Student DOB '+cont.Student_DOB__c);
            System.debug('\n');
        }
        
    }
}