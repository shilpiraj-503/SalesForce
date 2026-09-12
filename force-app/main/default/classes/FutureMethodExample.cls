public class FutureMethodExample {
    
    @future
    public static void show(){
        System.debug('show one');
        System.debug('show two');
        System.debug('show three');
        System.debug('show four');
        System.debug('show five');
    }
    
    @future
    public static void invoke(){
        System.debug('invoke one');
        System.debug('invoke two');
        System.debug('invoke three');
        System.debug('invoke four');
        System.debug('invoke five');
    }
    public void trip(){
        System.debug('trip one');
        System.debug('trip two');
        show();
        System.debug('trip three');
        System.debug('trip four');
        invoke();
        System.debug('trip five');
    }
}