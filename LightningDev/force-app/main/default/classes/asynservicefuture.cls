public class asynservicefuture 
{
 	public asynservicefuture()
    {
       haveshower();
       havebreakfast();
       carservice();
           movie();
    }
    public void haveshower(){
        system.debug('i am having shower');
    }
    
    public void havebreakfast() {
        system.debug('i am having breakfast');
    } 
   
    @future
    public static void carservice() {
        system.debug('i am going for car service');
    } 
   
    public void movie(){
        system.debug('i am going to movie');
    }
    
}