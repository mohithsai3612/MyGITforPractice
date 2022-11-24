import { LightningElement,wire } from 'lwc';
import findpatient from'@salesforce/apex/cl_patientdata.findpatient';
export default class Patientsearch extends LightningElement 
{
    key='';
    @wire(findpatient,{searchkey:'$key'}) patients;

    calme(event)
    {
        this.key=event.target.value;
    }
}