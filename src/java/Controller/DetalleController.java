/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Business.DeBL;
import Business.PeBL;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.detalle;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Diego
 */
public class DetalleController {
   ModelAndView mav=new ModelAndView();
   DeBL deDl=new DeBL();
   PeBL peDl=new PeBL();
   int idDetalle;
   List dato;
   
   @RequestMapping("indexDetalle.htm")
   public ModelAndView Listar(){
   dato=deDl.listar();
   mav.addObject("lista",dato);
   mav.setViewName("indexDetalle");
   return mav;
   }
   @RequestMapping(value="AgregarDetalle.htm",method=RequestMethod.GET)
   public ModelAndView Agregar(){
       mav.addObject(new detalle());
       dato=peDl.listar();
       mav.addObject("listad",dato);
       mav.setViewName("AgregarDetalle");
       return mav;
   }
   @RequestMapping(value="AgregarDetalle.htm",method=RequestMethod.POST)
   public ModelAndView Agregar(detalle de){
       deDl.insertar(de);
       return new ModelAndView("redirect:/indexDetalle.htm");
   }
   @RequestMapping(value="editarDetalle.htm",method=RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request){
     idDetalle=Integer.parseInt(request.getParameter("idDetalle"));
     dato=peDl.listar();
     mav.addObject("listad",dato);
     dato=deDl.buscar(idDetalle);
     mav.addObject("lista",dato);
     mav.setViewName("editarDetalle");
     return mav;
   }
   
   @RequestMapping(value="editarDetalle.htm",method=RequestMethod.POST)
   public ModelAndView Editar(detalle de)
   {
       deDl.actualizar(de);
       return new ModelAndView("redirect:/indexDetalle.htm");
   }
   @RequestMapping("deleteDetalle.htm")
   public ModelAndView Delete(HttpServletRequest request){
   idDetalle= Integer.parseInt(request.getParameter("idDetalle"));
   deDl.eliminar(idDetalle);
   return new ModelAndView("redirect:/indexDetalle.htm");
   }   
}
