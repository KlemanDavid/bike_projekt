import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-tour-detail',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './tour-detail.component.html',
  styleUrls: ['./tour-detail.component.css']
})
export class TourDetailComponent {
  tour: any;
  currentUsername: string | null = null;  


  constructor(private router: Router) {
    
    const navigation = this.router.getCurrentNavigation();
    this.tour = navigation?.extras.state?.['tour'];
  }

  ngOnInit(): void {

    this.currentUsername = localStorage.getItem('username');
  }

  goBack(): void {
    this.router.navigate(['/search']);
  }
}