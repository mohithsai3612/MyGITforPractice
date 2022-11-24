import { LightningElement,wire } from 'lwc';
import accdata from '@salesforce/apex/lwc_searchaccount.accdata';
import { updateRecord } from 'lightning/uiRecordApi';
import {refreshApex} from '@salesforce/apex';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import ID_FIELD from '@salesforce/schema/Account.Id';

const colll = [
    {label:'Account Name',fieldName: 'Name', editable:'true'},
    {label:'Fax',fieldName: 'Fax'},
    {label:'Phone',fieldName: 'Phone', type:'Phone', editable:'true'},
    {label:'Industry',fieldName: 'Industry'}
];


export default class Lwc_imperation_updaterecord extends LightningElement 
{
 
 col=colll;

 @wire(accdata)mohith;
 draftValues=[];
 
 handlesave(event)
 {
  const fields= {};
  
  fields[ID_FIELD.fieldApiName] = event.detail.draftValues[0].Id;
  fields[NAME_FIELD.fieldApiName] = event.detail.draftValues[0].Name;
  fields[PHONE_FIELD.fieldApiName] = event.detail.draftValues[0].Phone;

  const recordInput = {fields}

  updateRecord(recordInput).then(responce=>{
      alert('successful');
      this.draftValues=[];
      return refreshApex(this.mohith);
  }).catch(error=>{
      alert('unable to update');
  });


 }

}