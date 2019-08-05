/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Business.llantaBL;
import Business.vehicuBL;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.vehiculo;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Diego
 */
public class vehicuController {
   ModelAndView mav=new ModelAndView();
   vehicuBL vehicuDl=new vehicuBL();
   llantaBL llantaDl=new llantaBL();
   int idVehiculo;
   List dato;
   
   @RequestMapping("indexVehiculo.htm")
   public ModelAndView Listar(){
   dato=vehicuDl.listar();
   mav.addObject("lista",dato);
   mav.setViewName("indexVehiculo");
   return mav;
   }
   @RequestMapping(value="AgregarVehiculo.htm",method=RequestMethod.GET)
   public ModelAndView Agregar(){
       mav.addObject(new vehiculo());
       dato=llantaDl.listar();
       mav.addObject("listad",dato);
       mav.setViewName("AgregarVehiculo");
       return mav;
   }
   @RequestMapping(value="AgregarVehiculo.htm",method=RequestMethod.POST)
   public ModelAndView Agregar(vehiculo ve){
       vehicuDl.insertar(ve);
       return new ModelAndView("redirect:/indexVehiculo.htm");
   }
   @RequestMapping(value="editarVehiculo.htm",method=RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request){
     idVehiculo=Integer.parseInt(request.getParameter("idVehiculo"));
     dato=llantaDl.listar();
     mav.addObject("listad",dato);
     dato=vehicuDl.buscar(idVehiculo);
     mav.addObject("lista",dato);
     mav.setViewName("editarVehiculo");
     return mav;
   }
   
   @RequestMapping(value="editarVehiculo.htm",method=RequestMethod.POST)
   public ModelAndView Editar(vehiculo ve)
   {
       vehicuDl.actualizar(ve);
       return new ModelAndView("redirect:/indexVehiculo.htm");
   }
   @RequestMapping("deleteVehiculo.htm")
   public ModelAndView Delete(HttpServletRequest request){
   idVehiculo= Integer.parseInt(request.getParameter("idVehiculo"));
   vehicuDl.eliminar(idVehiculo);
   return new ModelAndView("redirect:/indexVehiculo.htm");
   }   
}
