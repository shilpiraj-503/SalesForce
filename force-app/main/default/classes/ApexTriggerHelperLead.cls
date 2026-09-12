public class ApexTriggerHelperLead {
	public static void beforeInsertMethod(List<Lead> lList){
		//logic
		for(Lead acc: lList){
            if(acc.leadSource=='Web'){
                acc.Industry='Technology';
                acc.Rating='Warm';
                acc.Description='LEAD FROM WEB';
            }
            else
            {
                acc.Industry='Engineering';
                acc.Rating='Cold';
                acc.Description='LEAD FROM Others';
            }
           
        }
    }
}