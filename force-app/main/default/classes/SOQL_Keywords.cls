public class SOQL_Keywords {
    public static void firstMethod(){
        List<String> stdName = new List<String>{'shilpi','Shanky'};
            
            List<Student__c> stdList= [SELECT Name,Student_Name__c,Student_Phone__c,Student_DOB__c
                                      FROM Student__c
                                      Where Student_Name__c IN: stdName];
        System.debug('StudentInfo: '+stdList);
        
        List<Id> stdSet = new List<Id>{'a005j00000RAbKbAAL','a005j00000QFKE8AAP'};
        List<Student__c> stdList2=[SELECT Name,Student_Name__c,Student_Phone__c,Student_DOB__c
                                      FROM Student__c
                                      Where ID IN: stdSet];
        System.debug('StudentInfo: '+stdList2);
    }
}