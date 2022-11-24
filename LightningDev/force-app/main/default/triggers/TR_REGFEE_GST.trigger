trigger TR_REGFEE_GST on Patient__c (before insert, before update) 
{
list<patient__c> NPL=trigger.new;
    for(patient__c EP:NPL)
    {
        EP.Original_Fee__c=EP.Registration_fee__c;
        Gst__c G=[select GST_TAX__c from Gst__c where   Department__c=: EP.Department__c];
        EP.Registration_fee__c= ((EP.Registration_fee__c*G.GST_TAX__c)/100)+EP.Registration_fee__c;
    }
}