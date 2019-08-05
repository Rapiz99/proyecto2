/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.List;
import model.factura;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Diego
 */
public class FacDL {
    Conexion con=new Conexion();
    JdbcTemplate jdbctemplate=new JdbcTemplate(con.conectar());
    List datos;
    
    public List Listar(){
        String sql="SELECT fac.idFacturaVenta,usu.idUsuario,ve.idVehiculo,lla.idllanta,fac.fecha,fac.Valor,Iva from facturaventa fac,usuario usu,vehiculo ve,llanta lla where fac.idUsuario=usu.idUsuario and fac.idvehiculo=ve.idVehiculo and fac.idllanta=lla.idllanta";
        datos= jdbctemplate.queryForList(sql);
        return datos;
    }
    
    public void insertar(factura fac){
    String sql="insert into facturaVenta (idFacturaVenta,idUsuario,idVehiculo,idllanta,fecha,Valor,Iva)values (?,?,?,?,?,?,?)";
    jdbctemplate.update(sql,fac.getIdFacturaVenta(),fac.getIdUsuario(),fac.getIdVehiculo(),fac.getIdllanta(),fac.getFecha(),fac.getValor(),fac.getIva());
    }
    public List buscar(int idFacturaVenta){
        String sql="select * from facturaventa where idFacturaVenta="+idFacturaVenta;
        datos=this.jdbctemplate.queryForList(sql);
        return datos;
    }
    public void actualizar(factura fac){
        String sql="UPDATE facturaventa SET idUsuario=?,idVehiculo=?,idllanta=?,fecha=?,Valor=?,Iva=? WHERE idFacturaVenta=?";
        jdbctemplate.update(sql,fac.getIdUsuario(),fac.getIdVehiculo(),fac.getIdllanta(),fac.getFecha(),fac.getValor(),fac.getIva(),fac.getIdFacturaVenta());
    }
    public void eliminar(int idFacturaVenta){
        String sql="delete from facturaventa where idFacturaVenta="+idFacturaVenta;
        this.jdbctemplate.update(sql);
    } 
}
