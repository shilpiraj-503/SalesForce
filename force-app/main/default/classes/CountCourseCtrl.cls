public class CountCourseCtrl {
    
    public static void beforeInsertCourse(List<Course__c> crsList){
        Set<Id> crsId=new Set<Id>();
        for(Course__c crs:crsList){
            crsId.add(crs.Teacher__c);
            System.debug(crs.Teacher__c);
        }
        List<Teacher__c> teachList=[SELECT Name,Teacher_Phone__c,CountOfCourses__c,
                                    (SELECT Name FROM Courses__r)
                                   FROM Teacher__c 
                                    WHERE ID IN: crsId];
        for(Teacher__c teach:teachList){
            List<Course__c> crs=teach.courses__r;
            teach.CountOfCourses__c=crs.size();
            System.debug(crs.size());
        }
        update teachList;
    }
	
    public static void beforeUpdateCount(List<Course__c> crsOld,List<Course__c> crsNew){
        Set<Id> idListOld=new Set<Id>();
        Set<Id> idListNew=new Set<Id>();
        for(Course__c crs:crsOld){
            idListOld.add(crs.Teacher__c);
            System.debug(crs.Teacher__c);
        }										//collected all older ids of updated list
        for(Course__c crs:crsNew){
            idListNew.add(crs.Teacher__c);
            System.debug(crs.Teacher__c);
        }										//collected all newer ids of updated list
        List<Teacher__c> teachoList=[SELECT Name,Teacher_Phone__c,CountOfCourses__c,
                                    (SELECT Name FROM Courses__r)
                                   FROM Teacher__c 
                                    WHERE ID IN: idListOld];		//old teachers list
        List<Teacher__c> teachnList=[SELECT Name,Teacher_Phone__c,CountOfCourses__c,
                                    (SELECT Name FROM Courses__r)
                                   FROM Teacher__c 
                                    WHERE ID IN: idListNew];		//new teachers list
        for(Teacher__c tc:teachoList){
            List<Course__c> tl=tc.Courses__r;
            tc.CountOfCourses__c=tl.size();
        }
        update teachoList;
        for(Teacher__c tc:teachnList){
            List<Course__c> tl=tc.Courses__r;
            tc.CountOfCourses__c=tl.size();
        }
        update teachnList;
    }
}