trigger Integration_sms on Lead (after insert) 
{
  map<id,lead> lm=trigger.newMap;
    set<id> keys=lm.keySet();
    Integration_sms.sendMessage(keys);
}