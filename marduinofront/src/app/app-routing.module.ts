import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './login/login/login.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { ListUsuarioComponent } from './gerenciar/usuario/list/list-usuario.component';
import { CadUsuarioComponent } from './gerenciar/usuario/cad-usuario/cad-usuario.component';

const routes: Routes = [
  {path: 'login', component: LoginComponent},
  {path: 'dashboard', component: DashboardComponent},
  {path: 'gerenciar-usuario', component: ListUsuarioComponent},
  {path: 'gerenciar-usuario-cadastro', component: CadUsuarioComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
