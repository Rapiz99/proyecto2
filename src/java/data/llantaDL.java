/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.List;
import model.llanta;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Diego
 */
public class llantaDL {
    Conexion con=new Conexion();
    JdbcTemplate jdbctemplate=new JdbcTemplate(con.conectar());
    List datos;
    
    public List Listar(){
        String sql="SELECT  pro.nombreEmpresa as nomProveedor, lla.idllanta,pro.idProveedor,lla.ancho,lla.diametro,lla.indiceVelocidad,lla.tipollanta,lla.Valor from  llanta lla , Proveedor pro where lla.idProveedor=pro.idProveedor";
        datos= jdbctemplate.queryForList(sql);
        return datos;
    }
    
    public void insertar(llanta lla){
    String sql="insert into llanta (idllanta,idProveedor,ancho,diametro,indiceVelocidad,tipollanta,Valor)values (?,?,?,?,?,?,?)";
    jdbctemplate.update(sql,lla.getIdllanta(),lla.getIdProveedor(),lla.getAncho(),lla.getDiametro(),lla.getIndiceVelocidad(),lla.getTipollanta(),lla.getValor());
    }
    public List buscar(int idllanta){
        String sql="select * from llanta where idllanta="+idllanta;
        datos=this.jdbctemplate.queryForList(sql);
        return datos;
    }
    public void actualizar(llanta lla){
        String sql="UPDATE llanta SET  idProveedor=?,ancho=?,diametro=?,indiceVelocidad=?,tipollanta=?,Valor=? WHERE idllanta=?";
        jdbctemplate.update(sql,lla.getIdProveedor(),lla.getAncho(),lla.getDiametro(),lla.getIndiceVelocidad(),lla.getTipollanta(),lla.getValor(),lla.getIdllanta());
    }
    public void eliminar(int idllanta){
        String sql="delete from llanta where idllanta="+idllanta;
        this.jdbctemplate.update(sql);
    }
}
