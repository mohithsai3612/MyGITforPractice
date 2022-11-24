public class method_variable 
{
 integer givenum=100;
 integer result=0;
 integer count=0;
    public void sumofodd()
    {
             result=0;
             count=0;
             while(count<givenum)   
             {
                 result=result+count;
                 count=count+1;
             }
        system.debug(result);
                 }
}