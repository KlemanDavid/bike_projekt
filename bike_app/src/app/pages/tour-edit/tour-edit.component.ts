import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { BaseService } from '../../base.service';

@Component({
  selector: 'app-tour-edit',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './tour-edit.component.html',
  styleUrls: ['./tour-edit.component.css']
})
export class TourEditComponent implements OnInit {
  tour: any = null;

  constructor(private router: Router, private base: BaseService) {}

  ngOnInit(): void {
  
    this.tour = history.state.tour;
    console.log("Received tour for editing:", this.tour);
    if (!this.tour || !this.tour.id) {
      alert("Nincs kiválasztott vagy érvényes túra! Részletek: " + JSON.stringify(this.tour));
      this.router.navigate(['/admin']);
    }
  }

  updateTour(): void {
    if (!this.tour.id) {
      alert("Érvénytelen túra: hiányzik az azonosító!");
      return;
    }

    this.tour.tour_time = this.tour.tour_time.toString();
    
    this.base.put(this.tour).subscribe(
      (res: any) => {
        console.log("Túra frissítve:", res);
        alert("Sikeres frissítés!");
        this.router.navigate(['/admin']);
      },
      (error: any) => {
        console.error("Hiba a túra frissítésekor:", error);
        const errorMsg = error.error?.message || error.message || "Ismeretlen hiba";
        alert("Hiba történt a túra frissítésekor: " + errorMsg);
      }
    );
  }

  cancel(): void {
    this.router.navigate(['/admin']);
  }
}