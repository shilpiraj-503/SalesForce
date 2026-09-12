public class StudentTriggerHelper {
    public static void descriptionChange(List<Student__c> stdList){
        for(Student__c std: stdList){
            std.Description__c='Changed Manually';
        }
        
    }

}