public class class_variable 
{integer givennum=100;
 integer result=0;
 integer count=0;
 public void sumeven()
    {
        while(count<givennum)
        {
            result=result+count;
            count=count+2;
        }
        system.debug(result);
}
}