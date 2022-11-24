public class soqlquery 
{
    public list<account> accs{get;set;}
    public soqlquery()
    {
        accs=[select Name,phone,fax,industry,rating from Account];
    }
    
}