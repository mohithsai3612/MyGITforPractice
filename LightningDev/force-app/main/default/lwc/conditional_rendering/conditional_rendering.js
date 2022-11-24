import { LightningElement,wire} from 'lwc';
import { getRecord,getFieldValue } from 'lightning/uiRecordApi';
import Id from '@salesforce/user/Id';
import Name_field from '@salesforce/schema/User.Name';


const fields=[Name_field];
export default class Conditional_rendering extends LightningElement 
{
    userId= Id;
    showdetails=false;
    actionbuttonlabel='Show Details';

    @wire(getRecord,{recordId:'$userId',fields})user;

    get Name(){
        return getFieldValue(this.user.data, Name_field);
    }

    togglechange(){
            this.showdetails=!this.showdetails;
            this.actionbuttonlabel=this.showdetails ? 'Hide Details' :'Show Details';
    }
}