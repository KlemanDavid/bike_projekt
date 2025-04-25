import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

export interface TourSuggestion {
  id ?: number; 
  tour_country: string;
  tour_time: string;
  difficulty: string;
  bike_type: string;
  route_name: string;
  tour_description: string;
  user_id?: number;
  user?: {
    id: number;
    name: string;
    username: string;
    email: string;
  };
  created_at?: string;
}

@Injectable({ providedIn: 'root' })
export class TourSuggestionService {
  private apiUrl = 'http://localhost:8000/api/tour-suggestions';  

  constructor(private http: HttpClient) { }

  private getAuthHeaders(): HttpHeaders {
    const token = localStorage.getItem('api_token') || '';
    return new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': `Bearer ${token}`
    });
  }

  sendSuggestion(data: TourSuggestion): Observable<TourSuggestion> {
    return this.http.post<TourSuggestion>(
      this.apiUrl,
      data,
      { headers: this.getAuthHeaders() }
    );
  }

  getSuggestions(): Observable<TourSuggestion[]> {
    return this.http.get<TourSuggestion[]>(
      this.apiUrl,
      { headers: this.getAuthHeaders() }
    );
  }
  
  deleteSuggestion(id: number): Observable<void> {
    const url = `${this.apiUrl}/${id}`;
    return this.http.delete<void>(
      url,
      { headers: this.getAuthHeaders() }
    );
}
}






