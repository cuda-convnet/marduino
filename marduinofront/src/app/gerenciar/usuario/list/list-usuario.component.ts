import { Component, OnInit, AfterViewInit } from '@angular/core';
import { faTable, faList, faUser, faFile, faSearch, faPlus } from '@fortawesome/free-solid-svg-icons';
import { faAt, faPhone, faCalendar, faEdit, faTrash, faCheck, faTimes } from '@fortawesome/free-solid-svg-icons';
import { NgForm } from '@angular/forms';
import { UsuarioService } from '../usuario.service';
import { Router } from '@angular/router';
import * as $ from 'jquery';

@Component({
  selector: 'app-usuario',
  templateUrl: './list-usuario.component.html',
  styleUrls: ['./list-usuario.component.scss']
})
export class ListUsuarioComponent implements OnInit, AfterViewInit {
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
  service: UsuarioService;
  router: Router;
  private ativo: boolean;
  constructor(service: UsuarioService, router: Router) {
    this.service = service;
    this.router = router;
  }

  toggleAtivo() {
    this.ativo = !this.ativo;
  }
  iconeAtivo() {
    return this.ativo ? faCheck : faTimes;
  }
  ngOnInit() {
  }

  ngAfterViewInit(): void {
    // $('.selectpicker').selectpicker();
  }

  onSubmit(form: NgForm) {
    console.log(form.form.value);
  }
  onAdicionar() {
    this.router.navigate(['gerenciar-usuario-cadastro'])
  }
}
