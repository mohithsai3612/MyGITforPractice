import { LightningElement } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';

export default class Lwc_imperationcreate_record extends LightningElement 
{
    aname;
    atype;
    astart
    aclose;
    
    
    
    nameme(event)
    {
     this.aname=event.target.value;
    }
    typeme(event)
    {
        this.atype=event.target.value;
    }
    StartDate(event)
    {
        this.astart=event.target.value;
    }
    CloseDate(event)
    {
        this.aclose=event.target.value;
    }
    saveme(event)
    {
      const fields={'Name':this.aname,'Type':this.atype,'StartDate':this.astart,'EndDate':this.aclose};
      
      const recordData ={apiName:'Campaign',fields};
      
      createRecord(recordData).then(response=>{
          alert('your Campaign created successfully')
      }).catch(error=>{
          alert('your Facing some Problem')
      });
        }


}