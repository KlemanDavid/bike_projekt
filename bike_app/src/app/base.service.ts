import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class BaseService {

  private baseUrl = 'http://localhost:8000/api';
  constructor(private http:HttpClient) { }

  get(){
    return this.http.get(this.baseUrl+"/tours")
  }
  post(body:any){
    return this.http.post(this.baseUrl+"/tours", body)
  }
  put(body:any){
    return this.http.put(this.baseUrl+"/tours/"+body.id, body)
  }
  delete(body:any){
    return this.http.delete(this.baseUrl+"/tours/"+body.id)
  }

}


