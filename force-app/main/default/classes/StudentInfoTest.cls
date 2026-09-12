@isTest
public class StudentInfoTest {

    @isTest
    public static void firstTestMethod(){
        StudentInfo std=new StudentInfo();
        std.course='B.Tech';
        std.firstMethod();
        StudentInfo std1=new StudentInfo();
        std1.course='Bvfgh';
        
        std1.firstMethod();
        System.assertEquals('Ram',std.name);
    }
}