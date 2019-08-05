/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.List;
import model.pedido;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Diego
 */
public class PeDL {
    Conexion con=new Conexion();
    JdbcTemplate jdbctemplate=new JdbcTemplate(con.conectar());
    List datos;
    
    public List Listar(){
        String sql="SELECT  pro.nombreEmpresa as nomProveedor, pe.idPedido,pro.idProveedor, pe.fechaPedido from Pedido pe, Proveedor pro where pe.idProveedor=pro.idProveedor";
        datos= jdbctemplate.queryForList(sql);
        return datos;
    }
    
    public void insertar(pedido pe){
    String sql="INSERT INTO pedido( idProveedor, fechaPedido) VALUES (?,?,?)";
    jdbctemplate.update(sql,pe.getIdProveedor(),pe.getFechaPedido());
    }
    public List buscar(int idPedido){
        String sql="select * from pedido where idPedido="+idPedido;
        datos=this.jdbctemplate.queryForList(sql);
        return datos;
    }
    public void actualizar(pedido pe){
        String sql="UPDATE pedido SET idProveedor=?,fechaPedido=? WHERE idPedido=?" ;
        jdbctemplate.update(sql,pe.getIdProveedor(),pe.getFechaPedido(),pe.getIdPedido());
    }
    public void eliminar(int idPedido){
        String sql="delete from pedido where idPedido="+idPedido;
        this.jdbctemplate.update(sql);
    }
}
