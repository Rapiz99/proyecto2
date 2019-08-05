/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import data.vehicuDL;
import java.util.List;
import model.vehiculo;

/**
 *
 * @author Diego
 */
public class vehicuBL {
    vehicuDL vehicuDl=new vehicuDL();
    
    public List listar(){
        return vehicuDl.Listar();
    }
    public void insertar (vehiculo ve){
        vehicuDl.insertar(ve);
    }
    public List buscar(int idVehiculo){
        return vehicuDl.buscar(idVehiculo);
    }
    public void actualizar(vehiculo ve){
        vehicuDl.actualizar(ve);
    }
    public void eliminar(int idVehiculo){
       vehicuDl.eliminar(idVehiculo);
    }  
}
