/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Business.PeBL;
import Business.ProBL;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.pedido;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Diego
 */
public class PeController {
    ModelAndView mav=new ModelAndView();
   ProBL proDl=new ProBL();
   PeBL peDl=new PeBL();
   int idPedido;
   List dato;
   
   @RequestMapping("indexPe.htm")
   public ModelAndView Listar(){
   dato=peDl.listar();
   mav.addObject("lista",dato);
   mav.setViewName("indexPe");
   return mav;
   }
   @RequestMapping(value="AgregarPe.htm",method=RequestMethod.GET)
   public ModelAndView Agregar(){
       mav.addObject(new pedido());
       dato=proDl.listar();
       mav.addObject("listad",dato);
       mav.setViewName("AgregarPe");
       return mav;
   }
   @RequestMapping(value="AgregarPe.htm",method=RequestMethod.POST)
   public ModelAndView Agregar(pedido pe){
       peDl.insertar(pe);
       return new ModelAndView("redirect:/indexPe.htm");
   }
   @RequestMapping(value="editarPe.htm",method=RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request){
     idPedido=Integer.parseInt(request.getParameter("idPedido"));
     dato=proDl.listar();
     mav.addObject("listad",dato);
     mav.setViewName("editarPe");
     return mav;
   }
   
   @RequestMapping(value="editarPe.htm",method=RequestMethod.POST)
   public ModelAndView Editar(pedido pe)
   {
       peDl.actualizar(pe);
       return new ModelAndView("redirect:/indexPe.htm");
   }
   @RequestMapping("deletePe.htm")
   public ModelAndView Delete(HttpServletRequest request){
   idPedido= Integer.parseInt(request.getParameter("idPedido"));
   peDl.eliminar(idPedido);
   return new ModelAndView("redirect:/indexPe.htm");
   }   
}
