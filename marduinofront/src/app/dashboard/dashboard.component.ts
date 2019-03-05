import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { faUsersCog, faFileAlt, faExclamationCircle, faTable, faAngleRight } from '@fortawesome/free-solid-svg-icons';

@Component({
  selector: 'app-dashboard',
  encapsulation: ViewEncapsulation.None,
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.scss']
})
export class DashboardComponent implements OnInit {
  faUsersCog = faUsersCog;
  faFileAlt = faFileAlt;
  faAngleRight = faAngleRight;
  faTable = faTable;
  faExclamationCircle = faExclamationCircle;
  constructor() {

  }

  ngOnInit() {
  }

}
