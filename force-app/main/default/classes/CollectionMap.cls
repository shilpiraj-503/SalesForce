public class CollectionMap {
    /*
     * if you want to store the data in key value pair so that time we use Map.
     * -> key should be unique
			-> value should be duplicate
		Map<Key DataType, Value DataType> mapName=new Map<Key DataType, Value DataType>();
	*/
    public Map<Integer,String> map1;
    
    public CollectionMap(){
        map1= new Map<Integer,String>();
    }
    
    public void addValueMethod(){
        map1.put(1,'Shilpi');
        map1.put(2,'Raj');
        map1.put(3,'Jahanvi');
        map1.put(4,'manya');
        System.debug('Team= '+map1);
        Map<Integer,String> map2 =new Map<Integer,String>();
         map2.put(5,'sagar');
         map2.put(6,'vatsa');
        map2.put(7,'garf');
        System.debug('Team= '+map2);
        Map<Integer,String> map3 =new Map<Integer,String>();
        map3.putAll(map2);
        map3.putAll(map1);
        
        System.debug('Final Team= '+map3);
        System.debug('Final Team Size= '+map3.size());
        Set<Integer> keys=map3.keySet();
        List<String> value=map3.values();
        System.debug('Final Team Keys= '+keys);
        System.debug('Final Team values= '+value);
        System.debug('2nd values= '+map3.get(2));
        map3.remove(2);
        System.debug('Final Team= '+map3);
        System.debug('contains key= '+ map3.containsKey(6));
        
    }
}