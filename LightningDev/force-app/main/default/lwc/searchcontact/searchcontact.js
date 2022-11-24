import { LightningElement,wire } from 'lwc';
import searchcontact from '@salesforce/apex/cl_lwc_searchopt_contact.searchcontact';

const colll = [
    {label:'FirstName',fieldName: 'FirstName'},
    {label:'LastName',fieldName: 'LastName'},
    {label:'Phone',fieldName: 'Phone', type:'Phone'},
    {label:'Email',fieldName: 'Email' ,type:'Email'}
];

export default class Searchcontact extends LightningElement 
{
    col= colll;
    searchkeys = '';
    @wire(searchcontact,{searchkey:'$searchkeys'}) contacts;


    searchme(event)
    {
        this.searchkeys=event.target.value;
    }
}