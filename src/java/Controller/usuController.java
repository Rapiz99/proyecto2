/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;


import Business.usuBL;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.usuario;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Diego
 */
public class usuController {
   ModelAndView mav=new ModelAndView();
   usuBL usuDl=new usuBL();
   int idUsuario;
   List dato;
   
   @RequestMapping("indexUsu.htm")
   public ModelAndView Listar(){
   dato=usuDl.listar();
   mav.addObject("lista",dato);
   mav.setViewName("indexUsu");
   return mav;
   }
   @RequestMapping(value="AgregarUsu.htm",method=RequestMethod.GET)
   public ModelAndView Agregar(){
       mav.addObject(new usuario());
       mav.setViewName("AgregarUsu");
       return mav;
   }
   @RequestMapping(value="AgregarUsu.htm",method=RequestMethod.POST)
   public ModelAndView Agregar(usuario usu){
       usuDl.insertar(usu);
       return new ModelAndView("redirect:/indexUsu.htm");
   }
   @RequestMapping(value="editarUsu.htm",method=RequestMethod.GET)
   public ModelAndView Editar(HttpServletRequest request){
     idUsuario=Integer.parseInt(request.getParameter("idUsuario"));
     dato=usuDl.buscar(idUsuario);
     mav.addObject("lista",dato);
     mav.setViewName("editarUsu");
     return mav;
   }
  @RequestMapping(value="editarUsu.htm",method=RequestMethod.POST)
   public ModelAndView Editar(usuario usu)
   {
      usuDl.actualizar(usu);
       return new ModelAndView("redirect:/indexUsu.htm");
   } 
    @RequestMapping("deleteUsu.htm")
   public ModelAndView Delete(HttpServletRequest request){
   idUsuario= Integer.parseInt(request.getParameter("idUsuario"));
   usuDl.eliminar(idUsuario);
   return new ModelAndView("redirect:/indexUsu.htm");
   }  
}
