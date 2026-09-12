public class CollectionList {
	/*->If you want to store the similar type of data in a sequence.
			-> If u want to store duplicate data so that time we use List.
			Sysntax::
				List<DataType> listName=new List<DataType>();
	*/
   public List<String> strList=new List<String>();
    
    public CollectionList(){
        strList=new List<String>{'shilpi','janavi','sagar','manya','vatsa'};
            
    }
    
    public void addValueMethod(){
        strList.add('garf');
        strList.add('garf');
        strList.add('aditya');
        strList.sort();
        System.debug('List length:: '+strList.size());
        System.debug('List Values:: '+strList);
    }
    public void secondMethod(){
        List<Integer> inList = new List<Integer>{10,10,10,40,50,20,70,80,90,100};
        Set<Integer> inSet =new Set<Integer>{10,10,10,40,20,60,70,80,90,100};
        System.debug('ListValues '+inList);
		System.debug('SetValues '+inSet);
        System.debug('ListValue of 2nd index '+inList.get(2));
        inList.remove(2); inSet.remove(20);
        System.debug('ListValues '+inList);
        System.debug('SetValues '+inSet);
    }
}