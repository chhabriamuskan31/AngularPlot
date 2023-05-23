import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'; 
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ChartsService {
  // getSalesByProduct() {
  //   throw new Error('Method not implemented.');
  // }

  constructor(private httpClient: HttpClient) { }
  getSalesByProduct():Observable<any> {
    return this.httpClient.get("http://localhost:8080/api/getSalesByProduct");
  }

  getSalesByYear():Observable<any> {
    return this.httpClient.get("http://localhost:8080/api/getSalesByYear");
  }

  getSalesByState():Observable<any> {
    return this.httpClient.get("http://localhost:8080/api/getSalesByState");
  }
}
