import { Component, OnInit} from '@angular/core';
import { HttpClient, HttpHeaders, HttpErrorResponse } from '@angular/common/http';

@Component({
  selector: 'app-customer-list',
  templateUrl: './customer-list.component.html',
  styleUrls: ['./customer-list.component.css']
})
export class CustomerListComponent implements OnInit {
  Customers: any = [];

  httpHeaders = new HttpHeaders().set('Content-Type', 'application/json');

  constructor(private httpClient: HttpClient) { }

  ngOnInit(): void {}

  onClick(){
    var data = (<HTMLInputElement>document.getElementById('userInput')).value;
    const url=`http://localhost:5000/api/getCustomerInfo/${data}`;
    this.getCustomers(url);
  }

  async getCustomers(url: any) {
    await this.httpClient.get(url).subscribe(res => {
      this.Customers = res;
      console.log(this.Customers);
    });
  }
}
