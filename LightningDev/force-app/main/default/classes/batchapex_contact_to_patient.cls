public class batchapex_contact_to_patient implements database.Batchable<sobject>
{
   public list<contact> start(database.BatchableContext cp)
   {
       list<contact> conlst=[select LastName,Email from contact];
       return conlst;
   }
    public void execute(database.BatchableContext cp, list<contact> con)
    {
      for(contact EC:CON)
      {
          Patient__c P= new Patient__c();
         P.Patient_First_name__c=EC.LastName;
          P.Patient_Primary_email__c=EC.email;
          database.insert(P,false);
      }
    }
public void finish(database.BatchableContext cp)
{
    
}
}