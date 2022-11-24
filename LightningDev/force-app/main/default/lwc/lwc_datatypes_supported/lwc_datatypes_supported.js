import { LightningElement } from 'lwc';

export default class Lwc_datatypes_supported extends LightningElement 
{
    name='Mohith Sai';
    age='25';
    Temperature='42';

    cities=['hyd','bza','vskp','gnt','smkt','alr','rpl'];


    students=
    [
        {'Name':'Mohith','Age':'25','City':'Machilipatnam'},
        {'Name':'Sai','Age':'25','City':'Vijayawada'},
        {'Name':'Charith','Age':'25','City':'Hyderabad'}
    ]
}