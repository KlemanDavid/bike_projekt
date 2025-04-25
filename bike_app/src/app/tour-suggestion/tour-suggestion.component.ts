import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators, ReactiveFormsModule } from '@angular/forms';
import { RouterModule, Router } from '@angular/router';
import { CommonModule } from '@angular/common';
import { TourSuggestionService } from '../tour-suggestion.service';

@Component({
  selector: 'app-tour-suggestion',
  standalone: true,
  imports: [
    ReactiveFormsModule,
    CommonModule,
    RouterModule
  ],
  templateUrl: './tour-suggestion.component.html',
  styleUrls: ['./tour-suggestion.component.css']
})
export class TourSuggestionComponent {
  form: FormGroup;
  submitting = false;

  constructor(
    private fb: FormBuilder,
    private service: TourSuggestionService,
    private router: Router
  ) {
    this.form = this.fb.group({
      country:      ['', Validators.required],
      time:         ['', Validators.required],
      difficulty:   ['', Validators.required],
      bikeType:     ['', Validators.required],
      routeName:    ['', Validators.required],
      description:  ['', Validators.required],
    });
  }

  currentUsername: string | null = null;

  ngOnInit(): void {
    
    this.currentUsername = localStorage.getItem('username');

  }

  onSubmit(): void {
    if (this.form.invalid) {
      alert('Kérlek, töltsd ki az összes mezőt!');
      return;
    }
    this.submitting = true;

    
    const fv = this.form.value;
    const payload = {
      tour_country:     fv.country,
      tour_time:        fv.time,
      difficulty:       fv.difficulty,
      bike_type:        fv.bikeType,
      route_name:       fv.routeName,
      tour_description: fv.description,
    };

    this.service.sendSuggestion(payload).subscribe({
      next: res => {
        console.log('Backend válasz:', res);
        alert('Köszönjük a javaslatot!');
        this.form.reset();
        this.submitting = false;
      },
      error: err => {
        console.error('HTTP hiba:', err);
        const serverMsg = err.error?.message ?? err.message ?? 'Ismeretlen hiba';
        alert(`Hiba történt a küldés során:\n${serverMsg} (kód: ${err.status})`);
        this.submitting = false;
      }
    });
  }

  goBack(): void {
    this.router.navigate(['/search']);
  }
}