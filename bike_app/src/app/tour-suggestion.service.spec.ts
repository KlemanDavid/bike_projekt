import { TestBed } from '@angular/core/testing';

import { TourSuggestionService } from './tour-suggestion.service';

describe('TourSuggestionService', () => {
  let service: TourSuggestionService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(TourSuggestionService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
