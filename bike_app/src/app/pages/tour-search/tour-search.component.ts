import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { HttpClientModule } from '@angular/common/http';
import { BaseService } from '../../base.service';

@Component({
  selector: 'app-tour-search',
  standalone: true,
  imports: [FormsModule, CommonModule, HttpClientModule],
  templateUrl: './tour-search.component.html',
  styleUrls: ['./tour-search.component.css']
})
export class TourSearchComponent implements OnInit {
  // Kiválasztott értékek
  selectedLocation: string = '';
  selectedDifficulty: string = '';
  selectedBikeType: string = '';
  selectedTime: string = '';

  // Dropdown menükhez tömbök
  tourLocations: string[] = [];
  difficultyLevels: string[] = [];
  bikeTypes: string[] = [];
  tourTimes: any[] = [];

  // Teljes túra adatok tömbje, backendből érkezik
  tours: any[] = [];

  currentUsername: string | null = null;
  
  constructor(private base: BaseService, private router: Router) {}

  ngOnInit(): void {
    // Betöltjük az összes túra adatot, majd kiszűrjük az egyedi megyéket
    this.currentUsername = localStorage.getItem('username');
    
    this.base.get().subscribe(
      (data: any) => {
        this.tours = data;
        this.tourLocations = Array.from(new Set(this.tours.map((tour: any) => tour.tour_country)));
        // Kezdetben a többi dropdown üres
        this.difficultyLevels = [];
        this.bikeTypes = [];
        this.tourTimes = [];
      },
      (error) => {
        console.error("Hiba a túrák betöltésekor:", error);
      }
    );
  }

  // Ha a megye (tour_country) kiválasztása történik
  onCountyChange(): void {
    const filtered = this.tours.filter((tour: any) => tour.tour_country === this.selectedLocation);
    this.difficultyLevels = Array.from(new Set(filtered.map((tour: any) => tour.difficulty)));
    // Reseteljük a későbbi dropdown-ok értékeit
    this.selectedDifficulty = '';
    this.bikeTypes = [];
    this.selectedBikeType = '';
    this.tourTimes = [];
    this.selectedTime = '';
  }

  // Ha a nehézség kiválasztása történik
  onDifficultyChange(): void {
    const filtered = this.tours.filter((tour: any) =>
      tour.tour_country === this.selectedLocation &&
      tour.difficulty === this.selectedDifficulty
    );
    this.bikeTypes = Array.from(new Set(filtered.map((tour: any) => tour.bike_type)));
    // Reseteljük a későbbi dropdown értékeit
    this.selectedBikeType = '';
    this.tourTimes = [];
    this.selectedTime = '';
  }

  // Ha a bicikli típus kiválasztása történik
  onBikeTypeChange(): void {
    const filtered = this.tours.filter((tour: any) =>
      tour.tour_country === this.selectedLocation &&
      tour.difficulty === this.selectedDifficulty &&
      tour.bike_type === this.selectedBikeType
    );
    this.tourTimes = Array.from(new Set(filtered.map((tour: any) => tour.tour_time)));
    this.selectedTime = '';
  }

  // Végleges kiválasztás és navigáció a tour-detail oldalra
  selectTour(): void {
    // Ellenőrzés: minden dropdownból választott-e az érték
    if (
      !this.selectedLocation ||
      !this.selectedDifficulty ||
      !this.selectedBikeType ||
      !this.selectedTime
    ) {
      alert("Kérlek, válassz mind a 4 opcióból!");
      return;
    }

    // Normalizáljuk a kiválasztott értékeket
    const filters = {
      tour_country: this.selectedLocation.trim().toLowerCase(),
      difficulty: this.selectedDifficulty.trim().toLowerCase(),
      bike_type: this.selectedBikeType.trim().toLowerCase(),
      tour_time: this.selectedTime ? this.selectedTime.toString().trim() : ''
    };

    // Szűrjük a túrákat úgy, hogy az adatokat is normalizáljuk
    const matchingTours = this.tours.filter((tour: any) => {
      const tourCountry = tour.tour_country ? tour.tour_country.trim().toLowerCase() : '';
      const tourDifficulty = tour.difficulty ? tour.difficulty.trim().toLowerCase() : '';
      const tourBikeType = tour.bike_type ? tour.bike_type.trim().toLowerCase() : '';
      const tourTime = tour.tour_time ? tour.tour_time.toString().trim() : '';
      
      return (
        tourCountry === filters.tour_country &&
        tourDifficulty === filters.difficulty &&
        tourBikeType === filters.bike_type &&
        tourTime === filters.tour_time
      );
    });

    console.log("Filters:", filters);
    console.log("Matching Tours:", matchingTours);

    if (matchingTours.length > 0) {
      const selectedTour = matchingTours[0];
      this.router.navigate(['/tour-detail'], { state: { tour: selectedTour } });
    } else {
      alert("Nincs találat a megadott szűrőkkel!");
    }
  }

goBack(): void {
  this.router.navigate(['/login']);
}

goToSuggestion(): void {
  this.router.navigate(['/tour-suggestion']);
}

}