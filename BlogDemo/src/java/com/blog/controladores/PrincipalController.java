/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blog.controladores;

import com.blog.entidades.Entrada;
import com.blog.servicios.EntradaServicioInterface;
import com.blog.util.Helper;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Hugo
 */
@Controller
public class PrincipalController {

    @Autowired
    private EntradaServicioInterface entradaServicioInterface;

    @RequestMapping(value = "/index.html")
    public ModelAndView frmIndex() {
        ModelAndView mv = new ModelAndView("Home");
        Helper.agregarUsuario(mv);
        return mv;
    }

    @RequestMapping(value = "/home.html")
    public ModelAndView frmPrincipal() {
        ModelAndView mv = new ModelAndView("Home");
        try {
            mv.addObject("entradas", entradaServicioInterface.getListaUltimasEntradas());
            Helper.agregarUsuario(mv);

        } catch (Exception ex) {
            mv.addObject("entradas", new ArrayList<Entrada>());
            System.out.println("------------------");
            System.out.println("Error: " + ex.getMessage());
            System.out.println("------------------");
        }
        return mv;
    }
}
