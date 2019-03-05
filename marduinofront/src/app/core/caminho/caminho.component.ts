import { Component, OnInit, Input } from '@angular/core';
import { Caminho } from './caminho.class';

@Component({
  selector: 'app-caminho',
  templateUrl: './caminho.component.html',
  styleUrls: ['./caminho.component.scss']
})
export class CaminhoComponent implements OnInit {

  @Input() caminhos: Caminho[];

  constructor() { }

  ngOnInit() {
  }

}
