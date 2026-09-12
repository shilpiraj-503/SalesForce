trigger CountCourse on Course__c (after insert,after update) {
	 if(Trigger.isInsert && Trigger.isAfter){
        CountCourseCtrl.beforeInsertCourse(Trigger.new);
    }else if(Trigger.isUpdate && Trigger.isAfter){
        
            CountCourseCtrl.beforeUpdateCount(Trigger.old,Trigger.new);
    }
}