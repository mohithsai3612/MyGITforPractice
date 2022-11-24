public class polymorphism 
{
    public integer num  {get;set;}
    public integer num1 {get;set;}
    public integer num2 {get;set;}
    public string ch    {get;set;}
    public string result {get;set;}
    
   public void masturu()
   {
      if(ch=='SO')
      {
        calculate(num);  
      }
       else if(ch=='area')
       {
         calculate(num,num1);  
       }
       else if(ch=='GR')
       {
           calculate(num,num1,num2);
       }
       else{
           calculate();
       }
   }
    void calculate()
    {
      result='Aleast select something First....!!!';  
    }
    void calculate(integer num)
    {
      integer count=0;
        integer r=0;
        while(count<num)
        {
            r=r+count;
            count=count+2;
        }
        result='The sum of all even number upto given number is' +r;
    }
    void calculate(integer num,integer num1)
    {
       integer r;
        r=num*num1;
        result='the area is' +r;
    }
    void calculate(integer num,integer num1,integer num2)
    {
      if (num>num1 && num>num2)
      {
          result='the greater number is' +num;
      }
        else if(num1>num && num1>num2)
        {
            result='the greater number is' +num1;
        }
        else
        {
            result='the greater number is' +num2;
        }
    }
}