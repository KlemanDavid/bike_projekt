import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TourSuggestionComponent } from './tour-suggestion.component';

describe('TourSuggestionComponent', () => {
  let component: TourSuggestionComponent;
  let fixture: ComponentFixture<TourSuggestionComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [TourSuggestionComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(TourSuggestionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
