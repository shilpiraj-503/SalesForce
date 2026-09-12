public class WrapExampleCtrl {
		
    public WrapExamp objWrap {get;set;}
    
    public WrapExampleCtrl(){
		objWrap=new WrapExamp();
        objWrap.no=1;
        objWrap.name='shilpi';
        objWrap.isFlag=true;
    }
    
    public class WrapExamp {
	
    public Integer no{get;set;}
    public String name{get;set;}
    public boolean isFlag{get;set;}
}
    
}