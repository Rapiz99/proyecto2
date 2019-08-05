/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import data.ProDL;
import java.util.List;
import model.proveedor;

/**
 *
 * @author Diego
 */
public class ProBL {
  ProDL proDl=new ProDL();
    public List listar(){
        return proDl.Listar();
    }
    public void insertar (proveedor pro){
        proDl.insertar(pro);
    }
    public List buscar(int idProveedor){
        return proDl.buscar(idProveedor);
    }
    public void actualizar(proveedor pro){
        proDl.actualizar(pro);
    }
    public void eliminar(int idProveedor){
        proDl.eliminar(idProveedor);
    }    
}
