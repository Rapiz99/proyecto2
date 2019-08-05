/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.List;
import model.usuario;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Diego
 */
public class usuDL {
    Conexion con=new Conexion();
    JdbcTemplate jdbctemplate=new JdbcTemplate(con.conectar());
    List datos;
    
    public List Listar(){
        String sql="select * from usuario";
        datos= jdbctemplate.queryForList(sql);
        return datos;
    }
    public void insertar(usuario usu){
    String sql="insert into usuario"+ "(nombre,apellido,direccion,telefono,correo,login,clave)values (?,?,?,?,?,?,?)";
    jdbctemplate.update(sql,usu.getNombre(),usu.getApellido(),usu.getDireccion(),usu.getTelefono(),usu.getCorreo(),usu.getLogin(),usu.getClave());
    }
    public List buscar(int idUsuario){
        String sql="select * from usuario where idUsuario="+idUsuario;
        datos=this.jdbctemplate.queryForList(sql);
        return datos;
    }
    public void actualizar(usuario usu){
        String sql="update usuario SET nombre=?,apellido=?,direccion=?,telefono=?,correo=?,login=?,clave=? WHERE idUsuario=?" ;
        jdbctemplate.update(sql,usu.getNombre(),usu.getApellido(),usu.getDireccion(),usu.getTelefono(),usu.getCorreo(),usu.getLogin(),usu.getClave(),usu.getIdUsuario());
    }
    public void eliminar(int idUsuario){
        String sql="delete from usuario where idUsuario="+idUsuario;
        this.jdbctemplate.update(sql);
    }  
}
