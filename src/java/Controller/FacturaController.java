/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Business.FacBL;
import Business.llantaBL;
import Business.usuBL;
import Business.vehicuBL;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.factura;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Diego
 */
public class FacturaController {
   ModelAndView mav=new ModelAndView();
   FacBL facDl=new FacBL();
   usuBL usuDl=new usuBL();
   vehicuBL vehicuDl=new vehicuBL();
   llantaBL llantaDl=new llantaBL();
   int idFacturaVenta;
   List dato;
   
   @RequestMapping("indexfactura.htm")
   public ModelAndView Listar(){
   dato=facDl.listar();
   mav.addObject("lista",dato);
   mav.setViewName("indexfactura");
   return mav;
   }
   @RequestMapping(value="Agregarfactura.htm",method=RequestMethod.GET)
   public ModelAndView Agregar(){
       mav.addObject(new factura());
       dato=usuDl.listar();
       mav.addObject("listad",dato);
       dato=vehicuDl.listar();
       mav.addObject("listav",dato);
       dato=llantaDl.listar();
       mav.addObject("listal",dato);
       mav.setViewName("Agregarfactura");
       return mav;
   }
   @RequestMapping(value="Agregarfactura.htm",method=RequestMethod.POST)
   public ModelAndView Agregar(factura fac){
       facDl.insertar(fac);
       return new ModelAndView("redirect:/indexfactura.htm");
   }
   @RequestMapping(value="editarfactura.htm",method=RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request){
     idFacturaVenta=Integer.parseInt(request.getParameter("idFacturaVenta"));
     dato=usuDl.listar();
     mav.addObject("listad",dato);
      dato=vehicuDl.listar();
       mav.addObject("listav",dato);
       dato=llantaDl.listar();
       mav.addObject("listal",dato);
     dato=facDl.buscar(idFacturaVenta);
     mav.addObject("lista",dato);
     mav.setViewName("editarfactura");
     return mav;
   }
   
   @RequestMapping(value="editarfactura.htm",method=RequestMethod.POST)
   public ModelAndView Editar(factura fac)
   {
       facDl.actualizar(fac);
       return new ModelAndView("redirect:/indexfactura.htm");
   }
   @RequestMapping("deletefactura.htm")
   public ModelAndView Delete(HttpServletRequest request){
   idFacturaVenta= Integer.parseInt(request.getParameter("idFacturaVenta"));
   facDl.eliminar(idFacturaVenta);
   return new ModelAndView("redirect:/indexfactura.htm");
   }    
}
