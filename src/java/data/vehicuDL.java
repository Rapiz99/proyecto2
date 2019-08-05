/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.List;
import model.vehiculo;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Diego
 */
public class vehicuDL {
    Conexion con=new Conexion();
    JdbcTemplate jdbctemplate=new JdbcTemplate(con.conectar());
    List datos;
    
    public List Listar(){
        String sql="SELECT ve.idVehiculo,lla.idllanta,ve.Modelo,ve.Marca from  vehiculo ve , llanta lla where ve.idllanta=lla.idllanta";
        datos= jdbctemplate.queryForList(sql);
        return datos;
    }
    
    public void insertar(vehiculo ve){
    String sql="insert into vehiculo (idVehiculo,idllanta,Modelo,Marca)values (?,?,?,?)";
    jdbctemplate.update(sql,ve.getIdVehiculo(),ve.getIdllanta(),ve.getModelo(),ve.getMarca());
    }
    public List buscar(int idVehiculo){
        String sql="select * from vehiculo where idVehiculo="+idVehiculo;
        datos=this.jdbctemplate.queryForList(sql);
        return datos;
    }
    public void actualizar(vehiculo ve){
        String sql="UPDATE vehiculo SET idllanta=?,Modelo=?,Marca=? WHERE idVehiculo=?";
        jdbctemplate.update(sql,ve.getIdllanta(),ve.getModelo(),ve.getMarca(),ve.getIdVehiculo());
    }
    public void eliminar(int idVehiculo){
        String sql="delete from vehiculo where idVehiculo="+idVehiculo;
        this.jdbctemplate.update(sql);
    }
}
