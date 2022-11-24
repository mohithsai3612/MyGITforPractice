import { LightningElement } from 'lwc';
import signin from './signin.html';
import signup from './signup.html';
import defaulttemp from './temps_multi.html';
export default class Temps_multi extends LightningElement 
{
 
    selected = null;

    render(){
       return this.selected === 'SignIn'? signin: this.selected === 'SignUp'? signup: defaulttemp;
    }

    handlechange(event){
        this.selected= event.target.label;
        console.log('sitaram---> ' + event.target.label);
    }
}