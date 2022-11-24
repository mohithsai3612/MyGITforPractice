public class instance_variable 
{
public void sumofeven(integer givennum)
{
    integer result=0;
    integer count=0;
    while(count<givennum)
    {
        result=result+count;
        count=count+2;
    }
    system.debug(result);
}
}