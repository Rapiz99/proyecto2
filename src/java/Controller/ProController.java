/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Business.ProBL;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.proveedor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Diego
 */
public class ProController {
     ModelAndView mav=new ModelAndView();
   ProBL proDl=new ProBL();
   int idProveedor;
   List dato;
   
   @RequestMapping("indexPro.htm")
   public ModelAndView Listar(){
   dato=proDl.listar();
   mav.addObject("lista",dato);
   mav.setViewName("indexPro");
   return mav;
   }
   @RequestMapping(value="AgregarPro.htm",method=RequestMethod.GET)
   public ModelAndView Agregar(){
       mav.addObject(new proveedor());
       mav.setViewName("AgregarPro");
       return mav;
   }
   @RequestMapping(value="AgregarPro.htm",method=RequestMethod.POST)
   public ModelAndView Agregar(proveedor pro){
       proDl.insertar(pro);
       return new ModelAndView("redirect:/indexPro.htm");
   }
   @RequestMapping(value="editarPro.htm",method=RequestMethod.GET)
   public ModelAndView Editar(HttpServletRequest request){
     idProveedor=Integer.parseInt(request.getParameter("idProveedor"));
     dato=proDl.buscar(idProveedor);
     mav.addObject("lista",dato);
     mav.setViewName("editarPro");
     return mav;
   }
  @RequestMapping(value="editarPro.htm",method=RequestMethod.POST)
   public ModelAndView Editar(proveedor pro)
   {
      proDl.actualizar(pro);
       return new ModelAndView("redirect:/indexPro.htm");
   } 
    @RequestMapping("deletePro.htm")
   public ModelAndView Delete(HttpServletRequest request){
   idProveedor= Integer.parseInt(request.getParameter("idProveedor"));
   proDl.eliminar(idProveedor);
   return new ModelAndView("redirect:/indexPro.htm");
   }  
}
