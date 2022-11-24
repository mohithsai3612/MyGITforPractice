import { LightningElement , api} from 'lwc';

export default class Contact_create_event extends LightningElement 
{
  @api firstname;
  @api lastname;
  @api phone;
  @api email;

  callfn(event)
  {
      this.firstname= event.target.value;
  }
  callln(event)
  {
      this.lastname = event.target.value;
  }

  callpn(event)
  {
      this.phone = event.target.value;
  }
  callem(event)
  {
      this.email = event.target.value;
  }
  sum(event)
  {
      const sav = new CustomEvent('sumit' , {detail: {FirstName:this.firstname,LastName:this.lastname,Phone:this.phone,Email:this.email}});
      this.dispatchEvent(sav);
  }

}