public class insertContactLwcCtrl {

    @AuraEnabled
    public static Id insertContact(Contact con)
    {
        insert con;
        return con.ID;
    }

}