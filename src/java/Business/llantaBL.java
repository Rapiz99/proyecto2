/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import data.llantaDL;
import java.util.List;
import model.llanta;
import model.vehiculo;

/**
 *
 * @author Diego
 */
public class llantaBL {
    llantaDL llantaDl=new llantaDL();
    
    public List listar(){
        return llantaDl.Listar();
    }
    public void insertar (llanta lla){
        llantaDl.insertar(lla);
    }
    public List buscar(int idllanta){
        return llantaDl.buscar(idllanta);
    }
    public void actualizar(llanta lla){
        llantaDl.actualizar(lla);
    }
    public void eliminar(int idllanta){
        llantaDl.eliminar(idllanta);
    }  

    public void insertar(vehiculo ve) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
