/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import data.PeDL;
import java.util.List;
import model.pedido;

/**
 *
 * @author Diego
 */
public class PeBL {
    PeDL PeDl=new PeDL();
    public List listar(){
        return PeDl.Listar();
    }
    public void insertar (pedido pe){
        PeDl.insertar(pe);
    }
    public List buscar(int idPedido){
        return PeDl.buscar(idPedido);
    }
    public void actualizar(pedido pe){
        PeDl.actualizar(pe);
    }
    public void eliminar(int idPedido){
        PeDl.eliminar(idPedido);
    } 
}
