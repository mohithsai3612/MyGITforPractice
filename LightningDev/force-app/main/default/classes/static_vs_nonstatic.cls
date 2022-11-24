public class static_vs_nonstatic 
{
    public integer num=10;
    public static integer num1=10;
    
    public void abc(integer z)
    {
        num=num+z;
        system.debug(num);
    }
    public static void efg(integer z)
    {
        num1=num1+z;
        system.debug(num1);}
        
        public list <integer> ijk()
        {
          decimal p=5000;
            decimal r=6;
            decimal t=2;
            decimal si;
            si=(p*t*r)/100;
            system.debug('the simple interest is '+si);
            list<integer> z=new list<integer>{1,2,3};
                return z;
        }
}