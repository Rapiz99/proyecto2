/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import data.usuDL;
import java.util.List;
import model.usuario;

/**
 *
 * @author Diego
 */
public class usuBL {
  usuDL usuDl=new usuDL();
    public List listar(){
        return usuDl.Listar();
    }
    public void insertar (usuario usu){
       usuDl.insertar(usu);
    }
    public List buscar(int idUsuario){
        return usuDl.buscar(idUsuario);
    }
    public void actualizar(usuario usu){
        usuDl.actualizar(usu);
    }
    public void eliminar(int idUsuario){
        usuDl.eliminar(idUsuario);
    }    
}
