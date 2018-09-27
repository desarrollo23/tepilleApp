import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { AllServicesProvider } from '../../providers/all-services/all-services'

/**
 * Generated class for the ContactsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-contacts',
  templateUrl: 'contacts.html',
})
export class ContactsPage {

  contacts: any;

  constructor(public navCtrl: NavController, 
    public navParams: NavParams, 
    public restService: AllServicesProvider) {
  }

  ngOnInit(){
    this.getContacts();
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ContactsPage');
  }

  getContacts() {
    this.restService.getContacts().subscribe( result => {
      console.log(result[0]);
      this.contacts = result;
    });
  }
}
