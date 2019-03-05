import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ListUsuarioComponent } from './usuario/list/list-usuario.component';
import { FontAwesomeModule } from '@fortawesome/angular-fontawesome';
import { CoreModule } from '../core/core.module';
import { FormsModule } from '@angular/forms';
import { CadUsuarioComponent } from './usuario/cad-usuario/cad-usuario.component';
import { CaminhoModule } from '../core/caminho/caminho.module';

@NgModule({
  declarations: [ListUsuarioComponent, CadUsuarioComponent],
  imports: [
    CommonModule,
    FontAwesomeModule,
    CoreModule,
    FormsModule,
    CaminhoModule
  ]
})
export class GerenciarModule { }
