public class Create_Account_GetSet 
{
    public string name {get;set;}
    public string phone {get;set;}
    public string fax {get;set;}
    public string rating {get;set;}
    public string industry {get;set;}
    
    public string Msg {get;set;}
    public string MsgClr {get;set;}
    public string MsgSiz {get;set;}
    
    public void CreateAcc()
    {
        try
        {
           Account A=new Account();
            A.Name=name;
            A.Industry=industry;
            A.Phone=phone;
            A.Fax=fax;
            A.Rating=rating;
            insert A;
            Msg = 'Account Created successfully with saleforce Account id'+A.Id;
            MsgClr='Green';
            MsgSiz='25px';            
        }
        catch(Exception E)
        {
          Msg ='Account creation failed due to following error'+E.getmessage();
            MsgClr='red';
            MsgSiz='25px';
        }
    }
    
}