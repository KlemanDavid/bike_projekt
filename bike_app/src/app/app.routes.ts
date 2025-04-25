import { Routes } from '@angular/router';
import { LoginComponent } from './pages/login/login.component';
import { TourSearchComponent } from './pages/tour-search/tour-search.component';
import { AdminComponent } from './pages/admin/admin.component';
import { RegisterComponent } from './register/register.component'
import { TourDetailComponent } from './pages/tour-detail/tour-detail.component';
import { TourEditComponent } from './pages/tour-edit/tour-edit.component';
import { TourSuggestionComponent } from './tour-suggestion/tour-suggestion.component';

export const routes: Routes = [
  { path: '', component: LoginComponent },
  { path: 'login', component: LoginComponent },
  { path: 'register', component: RegisterComponent },
  { path: 'search', component: TourSearchComponent },
  { path: 'admin', component: AdminComponent },
  { path: 'tour-detail', component: TourDetailComponent },
  { path: 'tour-edit', component: TourEditComponent },
  { path: 'tour-suggestion', component: TourSuggestionComponent}

];