/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import data.FacDL;
import java.util.List;
import model.factura;

/**
 *
 * @author Diego
 */
public class FacBL {
    FacDL facDl=new FacDL();
    
    public List listar(){
        return facDl.Listar();
    }
    public void insertar (factura fac){
        facDl.insertar(fac);
    }
    public List buscar(int idFacturaVenta){
        return facDl.buscar(idFacturaVenta);
    }
    public void actualizar(factura fac){
        facDl.actualizar(fac);
    }
    public void eliminar(int idFacturaVenta){
       facDl.eliminar(idFacturaVenta);
    }  
}
