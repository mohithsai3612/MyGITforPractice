public class Accountcontact_lead_DuplicateComparsion 
{
    public list<lead> LD;
    public list<Account_contact_lead> Accon;
    
    public void Acccon_Vs_Lead()
    {
       createleadData();
        CreateAcconConData();
        for(lead EL:LD)
        {
            for(Account_contact_lead EACON:Accon)
            {
                if(EL.Industry==EACON.Industry && EL.FirstName==EACON.FirstName)
                {
                  SYSTEM.debug('Duplicate found---> in lead/accon name is '+ EL.FirstName);  
                }
            }
        }
        
    }
    list <lead> createleadData()
    {
        LD = [select FirstName, LastName, Email, Rating, Industry, Phone from Lead];
        Return LD;
    }
    list<Account_contact_lead> CreateAcconConData()
    {
        list<Account> AC=[select Id,rating,industry from Account];
        list<Contact> CON=[select AccountId,FirstName,LastName,Phone from Contact];
        Accon=NEW LIST<Account_contact_lead>();
        
        for(Account EA:AC)
        {
            for(Contact EC:CON)
            {
             if(EC.AccountId==EA.Id)
             {
              Account_contact_lead EACON= NEW Account_contact_lead();
                 EACON.FirstName= EC.FirstName;
                 EACON.LastName=EC.LastName;
                 EACON.Phone=EC.Phone;
                 EACON.Industry=EA.Industry;
                 EACON.Rating=EA.Rating;
                 Accon.add(EACON); 
             }
            }
        }
        RETURN Accon;
    }
        
}