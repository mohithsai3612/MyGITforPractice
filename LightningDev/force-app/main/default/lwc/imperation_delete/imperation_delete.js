import { LightningElement,api } from 'lwc';
import { deleteRecord } from 'lightning/uiRecordApi';
import { NavigationMixin } from 'lightning/navigation';
export default class Imperation_delete extends NavigationMixin(LightningElement)
{
   @api recordId; 
    
    deleteme(event)
    {
        deleteRecord(this.recordId).then(response=>{
                this[NavigationMixin.Navigate]({
                    type: 'standard__objectPage',
                    attributes: {
                        objectApiName: 'Account',
                        actionName: 'home',
                    },
                });

        }).catch(error=>{});
    }
}