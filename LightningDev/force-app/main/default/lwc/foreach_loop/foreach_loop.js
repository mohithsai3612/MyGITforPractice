import Name from '@salesforce/schema/Account.Name';
import { LightningElement } from 'lwc';

export default class Foreach_loop extends LightningElement 
{
    students=
    [
        {
            Id:'001',
             Name:'student1',
             fee:'1000',
             class:'class1'
        },
        {
            Id:'002',
             Name:'student2',
             fee:'1000',
             class:'class2'
        },
        {
            Id:'003',
             Name:'student3',
             fee:'1000',
             class:'class3'
        },

    ]
}