public class StudentInfo {
	public String name;
    public String email;
    public String course;
	public Decimal fees;
    
    public void firstMethod(){
        name='shilpi';
        email='shilpi@gmail.com';
       // course='B.Tech';
        if(course=='B.Tech'){
            fees=200000;
        }
        else
        {
            fees=100000;
        }
        
    }
}