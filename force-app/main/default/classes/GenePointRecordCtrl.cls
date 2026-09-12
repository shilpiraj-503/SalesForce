public class GenePointRecordCtrl {
    public Account acc {get;set;}
    Public GenePointRecordCtrl(){
        acc=[SELECT Name,Phone,Rating,Industry
            FROM Account
            WHERE Name
            = : System.label.accName];
        acc.Rating='Hot';
        acc.Industry='Banking';
        update acc;
        
    }

}