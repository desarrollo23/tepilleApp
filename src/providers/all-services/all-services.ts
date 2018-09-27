import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

/*
  Generated class for the AllServicesProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class AllServicesProvider {

  constructor(public http: HttpClient) {
    console.log('Hello AllServicesProvider Provider');
  }

  getContacts() {
    return this.http.get('http://localhost:3800/contacts');
  }
}