/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.List;
import model.proveedor;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Diego
 */
public class ProDL {
    Conexion con=new Conexion();
    JdbcTemplate jdbctemplate=new JdbcTemplate(con.conectar());
    List datos;
    
    public List Listar(){
        String sql="select * from proveedor";
        datos= jdbctemplate.queryForList(sql);
        return datos;
    }
    public void insertar(proveedor pro){
    String sql="insert into proveedor"+ "(nombreEmpresa,direccion,telefono,correo,Nit)values (?,?,?,?,?)";
    jdbctemplate.update(sql,pro.getnombreEmpresa(),pro.getdireccion(),pro.gettelefono(),pro.getcorreo(),pro.getNit());
    }
    public List buscar(int idProveedor){
        String sql="select * from proveedor where idProveedor="+idProveedor;
        datos=this.jdbctemplate.queryForList(sql);
        return datos;
    }
    public void actualizar(proveedor pro){
        String sql="update proveedor set nombreEmpresa=?,direccion=?,telefono=?,correo=?,Nit=? where idProveedor=?" ;
        jdbctemplate.update(sql,pro.getnombreEmpresa(),pro.getdireccion(),pro.gettelefono(),pro.getcorreo(),pro.getNit(),pro.getIdProveddor());
    }
    public void eliminar(int idProveedor){
        String sql="delete from proveedor where idProveedor="+idProveedor;
        this.jdbctemplate.update(sql);
    }  
}
