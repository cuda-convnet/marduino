import { Component, OnInit, ViewEncapsulation, AfterViewInit } from '@angular/core';
import { UsuarioService } from '../usuario.service';
import { faTable, faList, faUser, faFile, faSearch, faPlus, faSave, faKey, faLock } from '@fortawesome/free-solid-svg-icons';
import { faAt, faPhone, faCalendar, faEdit, faTrash, faCheck, faTimes } from '@fortawesome/free-solid-svg-icons';
import { NgForm } from '@angular/forms';
declare var $: any;

@Component({
  selector: 'app-cad-usuario',
  encapsulation: ViewEncapsulation.None,
  templateUrl: './cad-usuario.component.html',
  styleUrls: ['./cad-usuario.component.scss']
})
export class CadUsuarioComponent implements OnInit, AfterViewInit {

  faTable = faTable;
  faList = faList;
  faUser = faUser;
  faFile = faFile;
  faAt = faAt;
  faPhone = faPhone;
  faCalendar = faCalendar;
  faEdit = faEdit;
  faTrash = faTrash;
  faCheck = faCheck;
  faTimes = faTimes;
  faSearch = faSearch;
  faPlus = faPlus;
  faSave = faSave;
  faKey = faKey;
  faLock = faLock;
  service: UsuarioService;
  constructor(service: UsuarioService) {
    this.service = service;
  }

  ngOnInit() {
  }

  ngAfterViewInit(): void {
    $('.selectpicker').selectpicker();
  }
  onSubmit(form: NgForm) {
    console.log(form.form.value);
  }

}
