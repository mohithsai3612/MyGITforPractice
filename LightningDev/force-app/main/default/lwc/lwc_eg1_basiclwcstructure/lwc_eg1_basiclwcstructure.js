import { LightningElement } from 'lwc';

export default class Lwc_eg1_basiclwcstructure extends LightningElement 
{
   msg='Mohith sai';
   
   clickme(event)
{
    this.msg='Mohith Tangirala';
    alert('This button is clicked')
}
}