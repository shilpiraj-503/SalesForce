public class SixthCompCtrl {

    @AuraEnabled
    public static Decimal getBonusMethod(Double exp,Decimal sal){
        Decimal bonus;
        if(exp>=5)
            bonus=sal*0.3;
        else
            bonus=sal*0.2;
       return bonus; 
    }
}