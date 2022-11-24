import { LightningElement,api } from 'lwc';

export default class Composition_child extends LightningElement 
{
  @api message;
  @api className;

  get alertClassName(){
    return this.className ? 'alert ' + this.className : 'alert'
  }
}