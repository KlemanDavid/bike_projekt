import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms'; 
import { Router } from '@angular/router';
import { BaseService } from '../../base.service';
import { UserService } from '../../user.service';  
import { TourSuggestionService, TourSuggestion } from '../../tour-suggestion.service';
import { HttpClientModule } from '@angular/common/http';

@Component({
  selector: 'app-admin',
  standalone: true,
  imports: [CommonModule, FormsModule, HttpClientModule,],
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.css']
})
export class AdminComponent implements OnInit {
  tours: any[] = [];
  users: any[] = [];   // Felhasználók tárolására
  suggestions: TourSuggestion[] = [];  // Új tömb a javaslatoknak

  difficultyLabels: Record<string,string> = {
    easy:   'Könnyű',
    medium: 'Közepes',
    hard:   'Nehéz'
  };

  // Új túra objektum, amelyet a túrák hozzáadásához használunk
  newTour = {
    tour_country: '',
    tour_time: '',
    difficulty: '',
    bike_type: '',
    route_name: '',
    tour_description: '',
    bike_pic: '',
    backgr_pic: ''
  };

  // A szerkesztendő túra adatait itt tároljuk
  editingTour: any = null;

  constructor(
    private base: BaseService,
    private router: Router,
    private userService: UserService,   
    private suggestionService: TourSuggestionService
  ) {}

  ngOnInit(): void {
    this.listTours();
    this.loadUsers();  // Betöltjük a regisztrált felhasználókat
    this.loadSuggestions();
  }

  // ========================
  // Túrák kezelése
  // ========================

  // Új túra hozzáadása
  addTour(): void {
    if (
      this.newTour.tour_country &&
      this.newTour.tour_time &&
      this.newTour.difficulty &&
      this.newTour.bike_type &&
      this.newTour.route_name &&
      this.newTour.tour_description &&
      this.newTour.bike_pic &&
      this.newTour.backgr_pic
    ) {
      this.base.post(this.newTour).subscribe(
        (res: any) => {
          console.log("Tour added:", res);
          alert("Sikeresen hozzáadtad a túrát!");
          this.listTours();
          this.resetForm();
        },
        (error: any) => {
          console.error("Error adding tour:", error);
          alert("Hiba történt a túra hozzáadásakor: " + JSON.stringify(error));
        }
      );
    } else {
      alert('Minden mezőt ki kell tölteni!');
    }
  }

  // Túrák listázása a backendből
  listTours(): void {
    this.base.get().subscribe(
      (data: any) => {
        this.tours = data;
        console.log("Lekért túrák:", this.tours);
      },
      (error: any) => {
        console.error("Error fetching tours:", error);
        alert("Hiba történt a túrák lekérésekor: " + JSON.stringify(error));
      }
    );
  }

  // Túra törlése
  deleteTour(tour: any): void {
    this.base.delete(tour).subscribe(
      (res: any) => {
        console.log("Tour deleted:", res);
        this.listTours();
      },
      (error: any) => {
        console.error("Error deleting tour:", error);
        alert("Hiba történt a túra törlésekor: " + JSON.stringify(error));
      }
    );
  }

  // Szerkesztés indítása: navigáció a szerkesztő oldalra
  editTour(tour: any): void {
    if (!tour || !tour.id) {
      alert("Nincs id: " + JSON.stringify(tour));
      return;
    }
    this.router.navigate(['/tour-edit'], { state: { tour: tour } });
  }

  // Módosítás mentése (inline szerkesztési lehetőséghez, ha van ilyen)
  updateTour(): void {
    this.base.put(this.editingTour).subscribe(
      (res: any) => {
        console.log("Tour updated:", res);
        this.listTours();
        this.editingTour = null;
      },
      (error: any) => {
        console.error("Error updating tour:", error);
        alert("Hiba történt a túra frissítésekor: " + JSON.stringify(error));
      }
    );
  }

  // Szerkesztés megszakítása
  cancelEdit(): void {
    this.editingTour = null;
  }

  // Űrlap alaphelyzetbe állítása
  resetForm(): void {
    this.newTour = {
      tour_country: '',
      tour_time: '',
      difficulty: '',
      bike_type: '',
      route_name: '',
      tour_description: '',
      bike_pic: '',
      backgr_pic: ''
    };
  }

  // ========================
  // Felhasználók kezelése
  // ========================

  // Felhasználók listázása a backendből
  loadUsers(): void {
    this.userService.getUsers().subscribe(
      (data: any) => {
        this.users = data;
        console.log("Regisztrált felhasználók:", this.users);
      },
      (error: any) => {
        console.error("Error fetching users:", error);
        alert("Hiba történt a felhasználók lekérésekor: " + JSON.stringify(error));
      }
    );
  }

  // Felhasználó törlése a backend segítségével
  deleteUser(user: any): void {
    if (confirm(`Biztosan törlöd a(z) ${user.name} felhasználót?`)) {
      this.userService.deleteUser(user.id).subscribe(
        (res: any) => {
          console.log("User deleted:", res);
          alert("Felhasználó sikeresen törölve!");
          this.loadUsers(); // Újratöltjük a felhasználói listát
        },
        (error: any) => {
          console.error("Error deleting user:", error);
          alert("Hiba történt a felhasználó törlésekor: " + JSON.stringify(error));
        }
      );
    }

  }
  
  loadSuggestions(): void {
    this.suggestionService.getSuggestions().subscribe(
      data => {
        this.suggestions = data;
        console.log('Beküldött javaslatok:', this.suggestions);
      },
      error => {
        console.error('Error fetching suggestions:', error);
        alert('Hiba történt a javaslatok lekérésekor: ' +
              JSON.stringify(error));
      }
    );
  }

  deleteSuggestion(suggestion: TourSuggestion): void {
    // 1) Ellenőrzés, hogy van-e id
    if (suggestion.id == null) {
      alert('Hiba: nincs érvényes ID, nem törölhető.');
      return;
    }
    // 2) Felhasználói megerősítés
    if (!confirm(`Biztosan törlöd a(z) "${suggestion.route_name}" javaslatot?`)) {
      return;
    }
  
    // 3) Meghívjuk a service-t
    const id = suggestion.id;
    this.suggestionService.deleteSuggestion(id).subscribe({
      next: () => {
        this.suggestions = this.suggestions.filter(s => s.id !== id);
        alert('Javaslat sikeresen törölve.');
      },
      error: err => {
        console.error('Hiba a törlés során', err);
        alert('Hiba történt a javaslat törlésekor: ' + JSON.stringify(err));
      }
    });
  }

  goToLogin(): void {
    this.router.navigate(['/login']);
}

}