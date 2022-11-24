import { LightningElement,wire } from 'lwc';
import { getListUi } from 'lightning/uiListApi';
import Account_Object from '@salesforce/schema/Account';

export default class GetListUiDemo extends LightningElement {
    accresult;
    @wire(getListUi, {objectApiName:Account_Object,
        listViewApiName:'AllAccounts'
})wirelistview({error, data}){
    if(data){
        console.log(data);
        this.accresult=data.records.records;
    }
}
}