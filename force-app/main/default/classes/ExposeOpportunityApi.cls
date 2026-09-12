@RestResource(urlmapping='/getOpportunity/*')
global class ExposeOpportunityApi {
	@HttpGet
    global static List<Opportunity> getOpportunity(){
        List<Opportunity> oppList=[SELECT Name,Type,CloseDate,StageName FROM Opportunity LIMIT 10];
        return oppList;
        
    }
    @HttpPost
    global static String createOpportunity(String Name,String types,String StageName,Date CloseDate){
        Opportunity opp=new Opportunity();
        opp.Name=Name;
        opp.Type=types;
        opp.StageName=StageName;
        opp.CloseDate=CloseDate;
        insert opp;
        return 'Opportunity inserted successfully!.... Here is the ID : '+opp.Id;
    }
}