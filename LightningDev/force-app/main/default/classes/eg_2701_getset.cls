public class eg_2701_getset 
{
    public integer num1   {set;get;}
    public integer num2   {set;get;}
    public integer num3   {set;get;}
    public string choice  {set;get;}
    public integer result {get;set;}
public void mastercalc()
{
    if (choice=='gt')
    {
        calgrater();
        system.debug(result);
    }
    else if(choice=='sm')
    {
        calsmaller();
        system.debug(result);
    }
    else
    {
        result=0;
    }
}
    void calgrater()
    {
        if(num1>num2 && num1>num3)
        {
           result=num1;
        }
        else if(num2>num1 && num2>num3)
        {
            result=num2;
        }
        else {
           result= num3;
        }   
    }
     void calsmaller()
    {
        if(num1<num2 && num1<num3)
        {
           result=num1;
        }
        else if(num2<num1 && num2<num3)
        {
            result=num2;
        }
        else {
           result= num3;
        }   
    }
}