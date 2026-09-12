public class MergeExample {
    public void firstMethod(){
        Account acc1 =[SELECT Name,Type
                      FROM Account
                      WHERE ID = '0015j00001BOgmpAAD'];//merged
        Account acc2 =[SELECT Name,Type
                      FROM Account
                      WHERE ID = '0015j00001BOgmsAAD'];//deleted
        merge acc1 acc2;
    }
}