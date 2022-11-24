import { LightningElement } from 'lwc';
import rendersigninTemplate from './rendersigninTemplate.html';
import rendersignupTemplate from './rendersignupTemplate.html';
import defaultTemplate from './renderMultipleTemplate.html';
export default class RenderMultipleTemplate extends LightningElement 
{
    selected=null;

    render(){
        return this.selected === 'signin' ? rendersigninTemplate: 
        this.selected === 'signup' ? rendersignupTemplate:
        defaultTemplate 
    }

    handleclick(event){
        this.selected= event.target.label;
    }

    clickhandler(event){
        if(event.target.label === 'signin'){
            alert('Sign In Successfull')
        }
        else(event.target.label === 'signup')
        {
            alert('Sign Up is Successfull');
        }
    }

    backhandler(event){
        this.selected= event.target.label;
        this.selected === defaultTemplate;
    }


}