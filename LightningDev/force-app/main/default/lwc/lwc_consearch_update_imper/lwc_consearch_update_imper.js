import { LightningElement,wire } from 'lwc';
import searchcontact from '@salesforce/apex/cl_lwc_searchopt_contact.searchcontact';
import { updateRecord } from 'lightning/uiRecordApi';
import ID_Field from '@salesforce/schema/Contact.Id';
import FirstName_FIELD from '@salesforce/schema/Contact.FirstName';
import LastName_FIELD from '@salesforce/schema/Contact.LastName';
import Email_FIELD from '@salesforce/schema/Contact.Email';

const colll=[
    {label:"FirstName", fieldName:"FirstName", type:"text",editable:true},
    {label:"LastName", fieldName:"LastName", type:"text",editable:true},
    {label:"Email", fieldName:"Email", type:"Email",editable:true}
]

export default class Lwc_consearch_update_imper extends LightningElement 
{
  searchkeey;
  cols=colll;
  draftvalues=[];
    @wire(searchcontact,{searchkey:'$searchkeey'}) mohith;

    calsearch(event)
    {
       this.searchkeey=event.target.value;
    }

    handlesave(event)
    {
      const fields={};

      fields[ID_Field.fieldApiName]=event.detail.draftvalues[0].Id;

      fields[FirstName_FIELD.fieldApiName]=event.detail.draftvalues[0].FirstName;

      fields[LastName_FIELD.fieldApiName]=event.detail.draftvalues[0].LastName;

      fields[Email_FIELD.fieldApiName]=event.detail.draftvalues[0].Email;

      const recordinput={fields};

      updateRecord(recordinput).then(response=>{}).catch(error=>{});
    }
    
}