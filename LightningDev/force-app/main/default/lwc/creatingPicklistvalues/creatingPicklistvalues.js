import { LightningElement,wire } from 'lwc';
import { getPicklistValues } from 'lightning/uiObjectInfoApi';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
export default class CreatingPicklistvalues extends LightningElement 
{
    selectedvalue;
    selectedindustry;
    /* static value*/

    get options() {
        return [
            { label: 'sfdc', value: 'sfdc' },
            { label: 'javascript', value: 'javascript' },
            { label: 'devops', value: 'devops' },
            { label: 'azure', value: 'azure' },
            { label: 'testing', value: 'testing' },
            { label: 'aws', value: 'aws' }
        ];
    }
    handleChange(event)
    {
        this.selectedvalue = event.target.value;
    }

    @wire(getPicklistValues, { recordTypeId: '012000000000000AAA', fieldApiName: INDUSTRY_FIELD })
    typevalues;
    handleIndustryChange(event)
    {
        this.selectedindustry = event.target.value;
    }
}