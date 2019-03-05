import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'marduinofront';
  constructor(private router: Router) {
    // this.router.navigate(['/dashboard']);
    // router.events.subscribe((url:any) => console.log(url));
  }
}
