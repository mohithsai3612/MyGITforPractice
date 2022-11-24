import { LightningElement,wire} from 'lwc';
import accdata from '@salesforce/apex/lwc_searchaccount.accdata'
export default class Accountdata extends LightningElement 
{
    @wire(accdata) mohith;
}