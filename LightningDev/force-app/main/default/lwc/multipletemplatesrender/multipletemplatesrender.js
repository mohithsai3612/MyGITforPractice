import { LightningElement } from 'lwc';
import signintemp from './signintemp.html';
import signuptemp from './signuptemp.html';
//import defaulttemplate from './multipletemplaterender.html';
export default class Multipletemplatesrender extends LightningElement 
{
  selected = null;

  render(){
    return this.selected === 'sign in' ? signintemp :
    this.selected === 'sign up' ? signuptemp:
    defaulttemplate
  }

  handlechange(event){
            this.selected = event.target.label;
  }
}