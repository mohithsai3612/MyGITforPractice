import { createRecord } from 'lightning/uiRecordApi';
import { LightningElement ,track, api} from 'lwc';

export default class Contact_display_byevent extends LightningElement 
{
    @track confn;
    @track conln;
    @track conem;
    @track conph;
    @api recordId;

    display(event)
    {
       this.confn = event.detail.FirstName;
       this.conln = event.detail.LastName;
       this.conem = event.detail.Email;
       this.conph = event.detail.Phone;

       const fields = {'FirstName':this.confn, 'LastName': this.conln, 'Phone': this.conph, 'Email':this.conem};

       const recordData= { apiName:'Contact', fields};

       createRecord(recordData).then(response=>{
           alert('Record Created Successfully : '+ response.id);
           this.recordId= response.id;
       }).catch(error=>{
           alert('record creation failed');
       })

    }

}