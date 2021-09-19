import { Component, OnInit} from '@angular/core';
import { HttpClient, HttpHeaders, HttpErrorResponse } from '@angular/common/http';

@Component({
  selector: 'app-order-list',
  templateUrl: './order-list.component.html',
  styleUrls: ['./order-list.component.css']
})
export class OrderListComponent implements OnInit {
  Orders: any = [];

  httpHeaders = new HttpHeaders().set('Content-Type', 'application/json');

  constructor(private httpClient: HttpClient) { }

  ngOnInit(): void {}

  onClick(){
    var data = (<HTMLInputElement>document.getElementById('userInput')).value;
    console.log(data);
    const url=`http://localhost:5000/api/getSubscriptionOrders/${data}`;
    this.getCustomers(url);
  }

  async getCustomers(url: any) {
    await this.httpClient.get(url).subscribe(res => {
      this.Orders = res;
    });
  }
}
