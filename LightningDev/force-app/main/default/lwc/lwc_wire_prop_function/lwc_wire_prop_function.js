import { LightningElement } from 'lwc';
import { wire } from 'lwc';
import searchcontact from '@salesforce/apex/cl_lwc_searchopt_contact.searchcontact'

const colll = [
    {label:'FirstName',fieldName: 'FirstName'},
    {label:'LastName',fieldName: 'LastName'},
    {label:'Phone',fieldName: 'Phone', type:'Phone'},
    {label:'Email',fieldName: 'Email' ,type:'Email'}
];


export default class Lwc_wire_prop_function extends LightningElement 
{
    searchtext;
    col=colll;
    myerror;
    mydata;
    searchme(event)
    {
       this.searchtext= event.target.value;

    }

    //****wire a property****/

    @wire(searchcontact,{searchkey:'$searchtext'}) mohith;

    //**wire a function**/
    @wire(searchcontact,{searchkey:'$searchtext'}) mohith({error, data})
                                                         { 
                                                             if(data)
                                                             {
                                                              this.mydata= data;
                                                             }
                                                             else if(error)
                                                             {
                                                               this.error= myerror;
                                                             }
                                                         }
}