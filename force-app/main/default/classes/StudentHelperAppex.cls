public class StudentHelperAppex {
	
    public static void dispErrorWhwenEnterDuplicateEmail(List<Student__c> stdList){
        Set<String> newEmailIds = new Set<String>(); //to store emails from new data entry
        for(Student__c s:StdList){ 					// to iterate the new records
            newEmailIds.add(s.Student_Email__c);	//collecting emails of these new records
        }

        List<Student__c> existingstd = [SELECT Name,Student_Email__c 
                                        FROM Student__c 
                                        WHERE Student_Email__c IN: newEmailIds]; // fetch all student email from database having these new email ids

        Set<String> oldEmailIds = new Set<String>();// old email id's list creation

        for(Student__c std: existingstd){
            oldEmailIds.add(std.Student_Email__c);
        }
        for(Student__c std: stdList){		// if they exist error
            if(oldEmailIds.contains(std.Student_Email__c)){
                std.addError('Duplicate Email Id');
            }
        } 
    
    }
    
    public static void dispErrorUpdateDuplicateEmail(List<Student__c> stdList,Map<Id,Student__c> oldStd){
        Set<String> newEmailIds = new Set<String>(); //to store emails from new data entry
        for(Student__c s:StdList){ 	
            
            // to iterate the new records
            if(s.Student_Email__c!=oldStd.get(s.Id).Student_Email__c){
            newEmailIds.add(s.Student_Email__c);	//collecting emails of these new records
        }	
        }

        List<Student__c> existingstd = [SELECT Name,Student_Email__c 
                                        FROM Student__c 
                                        WHERE Student_Email__c IN: newEmailIds]; // fetch all student email from database having these new email ids

        Set<String> oldEmailIds = new Set<String>();// old email id's list creation

        for(Student__c std: existingstd){
            oldEmailIds.add(std.Student_Email__c);
        }
        for(Student__c std: stdList){		// if they exist error
            if(oldEmailIds.contains(std.Student_Email__c)){
                std.addError('Duplicate Email Id');
            }
        }


    }


}