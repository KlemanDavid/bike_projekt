import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TourEditComponent } from './tour-edit.component';

describe('TourEditComponent', () => {
  let component: TourEditComponent;
  let fixture: ComponentFixture<TourEditComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [TourEditComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(TourEditComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
