/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import data.DeDL;
import java.util.List;
import model.detalle;

/**
 *
 * @author Diego
 */
public class DeBL {
    DeDL deDl=new DeDL();
    
    public List listar(){
        return deDl.Listar();
    }
    public void insertar (detalle de){
        deDl.insertar(de);
    }
    public List buscar(int idDetalle){
        return deDl.buscar(idDetalle);
    }
    public void actualizar(detalle de){
        deDl.actualizar(de);
    }
    public void eliminar(int idDetalle){
       deDl.eliminar(idDetalle);
    }  
}
