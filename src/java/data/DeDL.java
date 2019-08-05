/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.List;
import model.detalle;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Diego
 */
public class DeDL {
   Conexion con=new Conexion();
    JdbcTemplate jdbctemplate=new JdbcTemplate(con.conectar());
    List datos;
    
    public List Listar(){
        String sql="SELECT de.idDetalle,pe.idPedido,de.Cantidad,de.Costo from detallepedido de , pedido pe where de.idPedido=pe.idPedido";
        datos= jdbctemplate.queryForList(sql);
        return datos;
    }
    
    public void insertar(detalle de){
    String sql="insert into detallepedido (idDetalle,idPedido,Cantidad,Costo)values (?,?,?,?)";
    jdbctemplate.update(sql,de.getIdDetalle(),de.getIdPedido(),de.getCantidad(),de.getCosto());
    }
    public List buscar(int idDetalle){
        String sql="select * from detallepedido where idDetalle="+idDetalle;
        datos=this.jdbctemplate.queryForList(sql);
        return datos;
    }
    public void actualizar(detalle de){
        String sql="UPDATE detallepedido SET idPedido=?,Cantidad=?,Costo=? WHERE idDetalle=?";
        jdbctemplate.update(sql,de.getIdPedido(),de.getCantidad(),de.getCosto(),de.getIdDetalle());
    }
    public void eliminar(int idDetalle){
        String sql="delete from detallepedido where idDetalle="+idDetalle;
        this.jdbctemplate.update(sql);
    } 
}
