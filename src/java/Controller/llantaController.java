/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Business.ProBL;
import Business.llantaBL;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.llanta;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Diego
 */
public class llantaController {
    ModelAndView mav=new ModelAndView();
   ProBL proDl=new ProBL();
   llantaBL llantaDl=new llantaBL();
   int idllanta;
   List dato;
   
   @RequestMapping("indexllanta.htm")
   public ModelAndView Listar(){
   dato=llantaDl.listar();
   mav.addObject("lista",dato);
   mav.setViewName("indexllanta");
   return mav;
   }
   @RequestMapping(value="Agregarllanta.htm",method=RequestMethod.GET)
   public ModelAndView Agregar(){
       mav.addObject(new llanta());
       dato=proDl.listar();
       mav.addObject("listad",dato);
       mav.setViewName("Agregarllanta");
       return mav;
   }
   @RequestMapping(value="Agregarllanta.htm",method=RequestMethod.POST)
   public ModelAndView Agregar(llanta lla){
       llantaDl.insertar(lla);
       return new ModelAndView("redirect:/indexllanta.htm");
   }
   @RequestMapping(value="editarllanta.htm",method=RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request){
     idllanta=Integer.parseInt(request.getParameter("idllanta"));
     dato=proDl.listar();
     mav.addObject("listad",dato);
     dato=llantaDl.buscar(idllanta);
     mav.addObject("lista",dato);
     mav.setViewName("editarllanta");
     return mav;
   }
   
   @RequestMapping(value="editarllanta.htm",method=RequestMethod.POST)
   public ModelAndView Editar(llanta lla)
   {
       llantaDl.actualizar(lla);
       return new ModelAndView("redirect:/indexllanta.htm");
   }
   @RequestMapping("deletellanta.htm")
   public ModelAndView Delete(HttpServletRequest request){
   idllanta= Integer.parseInt(request.getParameter("idllanta"));
   llantaDl.eliminar(idllanta);
   return new ModelAndView("redirect:/indexllanta.htm");
   }   
}
