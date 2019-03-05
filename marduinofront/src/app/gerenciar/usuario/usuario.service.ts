import { Injectable } from '@angular/core';
import { Caminho } from 'src/app/core/caminho/caminho.class';

@Injectable({
  providedIn: 'root'
})
export class UsuarioService {

  constructor() { }

  caminhoList() {
    return [
      new Caminho('Listar usuários', 'gerenciar-usuario')
    ];
  }

  caminhoCad() {
    const caminho = [];
    caminho.push(this.caminhoList()[0]);
    caminho.push(new Caminho('Cadastrar usuário', 'gerenciar-usuario'));
    return caminho;
  }
}
