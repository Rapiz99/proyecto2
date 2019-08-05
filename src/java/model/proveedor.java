/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;



/**
 *
 * @author Diego
 */
public class proveedor {
  private int idProveedor;
  private String nombreEmpresa;
  private String direccion;
  private String telefono;
  private String correo;
  private int Nit;

  public int getIdProveddor(){
      return idProveedor;
  }  
  public void setIdProveedor(int idProveedor){
      this.idProveedor=idProveedor;
  }
  public String getnombreEmpresa(){
      return nombreEmpresa;
  }
  public void setnombreEmpresa(String nombreEmpresa){
      this.nombreEmpresa=nombreEmpresa;
  }
  public String getdireccion(){
      return direccion;
  }
  public void setdireccion(String direccion){
      this.direccion=direccion;
  }
  public String gettelefono(){
      return telefono;
  }
  public void settelefono(String telefono){
      this.telefono=telefono;
  }
  public String getcorreo(){
      return correo;
  }
  public void setcorreo(String correo){
      this.correo=correo;
  }
  public int getNit(){
      return Nit;
  } 
  public void setNit(int Nit){
      this.Nit=Nit;
  }
}
