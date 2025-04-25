import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { NgForm } from '@angular/forms';
import { AuthService } from '../../auth.service';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-login',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  // A credentials objektum alapértelmezett értékei üresen indulnak,
  // de teszteléshez később könnyen beírhatod a "user" / "1234" vagy "admin" / "admin" értékeket.
  credentials = {
    login: '',
    password: ''
  };


  showPassword = false;

  constructor(private authService: AuthService, private router: Router) { }

  ngOnInit(): void {}


  togglePasswordVisibility(): void {
    this.showPassword = !this.showPassword;
  }

  onSubmit(form: NgForm): void {
    if (form.invalid) {
      alert('Kérem, töltsd ki az összes mezőt!');
      return;
    }

    // Ellenőrizzük a fix értékeket:
    //if (this.credentials.login === 'admin' && this.credentials.password === 'admin') {
      //alert('Sikeres bejelentkezés adminként!');
      //localStorage.setItem('api_token', 'fixed-admin-token'); // teszt token admin részére
      //this.router.navigate(['/admin']);
    //} else if (this.credentials.login === 'user' && this.credentials.password === '1234') {
      //alert('Sikeres bejelentkezés felhasználóként!');
      //localStorage.setItem('api_token', 'fixed-user-token'); // teszt token user részére
      //localStorage.setItem('username', 'user'); 
      //this.router.navigate(['/search']);
    //} else {
      // Ha nem a fix értékekkel próbálkozunk, a megszokott API hívással lép be
      this.authService.login(this.credentials).subscribe(
        (res: any) => {
          // sikeres login
          alert('Sikeres bejelentkezés!');
          localStorage.setItem('api_token', res.api_token);
          localStorage.setItem('username', res.user.username);
          localStorage.setItem('is_admin', res.is_admin ? '1' : '0');
          
          if (res.is_admin) {
            this.router.navigate(['/admin']);
          } else {
            this.router.navigate(['/search']);
          }
        },
        (error: any) => {
          console.error('Bejelentkezési hiba:', error);
          const msg = error.error?.error || error.message || 'Ismeretlen hiba';
          alert('Bejelentkezési hiba: ' + msg);
        }
      );  
  
    } 
  
    goToRegister(): void {
      this.router.navigate(['/register']);
    }
  
  } 

