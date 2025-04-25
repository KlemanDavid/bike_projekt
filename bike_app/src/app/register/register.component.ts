import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { NgForm } from '@angular/forms';
import { AuthService } from '../auth.service';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-register',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {
  user = {
    name: '',
    username: '', 
    email: '',
    birthdate: '',
    password: '',
    confirmPassword: ''
  };

  showPassword = false;
  showConfirmPassword = false;
  
  
  constructor(private authService: AuthService, private router: Router) {}

  ngOnInit(): void {}

  togglePasswordVisibility(): void {
    this.showPassword = !this.showPassword;
  }

  toggleConfirmVisibility(): void {
    this.showConfirmPassword = !this.showConfirmPassword;
  }

  onSubmit(form: NgForm): void {
    if (form.invalid) {
      alert('Kérem, töltsd ki az összes mezőt!');
      return;
    }

    const pwd = this.user.password || '';
    const digitCount = (pwd.match(/\d/g) || []).length;
    if (pwd.length < 8 || digitCount < 2) {
      alert('A jelszónak legalább 8 karakter hosszúnak kell lennie, és tartalmaznia kell legalább 2 számjegyet!');
      return;
    }

    if (this.user.password !== this.user.confirmPassword) {
      alert('A jelszavak nem egyeznek!');
      return;
    }

    const registrationData = {
      name: this.user.name,
      username: this.user.username, // Küldjük a username-t is
      email: this.user.email,
      birthdate: this.user.birthdate,
      password: this.user.password,
      password_confirmation: this.user.confirmPassword
    };

    console.log('Registration Data:', registrationData);

    this.authService.register(registrationData).subscribe(
      (res: any) => {
        alert('Sikeres regisztráció!');
        this.router.navigate(['/login']);
      },
      (error: any) => {
        console.error('Regisztrációs hiba:', error);
        const errorMsg = error.error ? JSON.stringify(error.error) : error.message || 'Ismeretlen hiba';
        alert('Regisztrációs hiba: ' + errorMsg);
      }
    );
  }
 
 goBack(): void {
  this.router.navigate(['/login']); 
}


}
