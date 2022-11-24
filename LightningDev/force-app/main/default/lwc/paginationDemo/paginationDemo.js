import { LightningElement , wire} from 'lwc';
import getcontacts from '@salesforce/apex/pagecontact.getcontacts';


export default class PaginationDemo extends LightningElement {
    totalcontacts;
    visiblecontacts
    
    @wire(getcontacts)
    wiredcontacts({error,data}){
        if(data)
        {
            this.visiblecontacts= data
            this.totalcontacts=data;
        }
        if(error){
            console.log(error);
        }
    }

    updatecontroller(event){
        this.visiblecontacts=[...event.detail.records]
    }

}