public class StudentCtrl {
    public String stdName {get;set;}
    public String stdPhone {get;set;}
    public String stdAge {get;set;}
    public StudentCtrl(){
        //initialize the value or to assign the default value we use Constructor
        stdName='Shilpi';
        stdPhone='346578978';
        stdAge='23';
        System.debug('Student Name :: '+stdName);
        System.debug('Student Phone :: '+stdPhone);
        System.debug('Student Agr :: '+stdAge);
    }
}