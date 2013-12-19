/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blog.controladores;

import com.blog.util.Helper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Hugo
 */
@Controller
public class PrincipalController {
    
    @RequestMapping(value = "/index.html")
    public ModelAndView frmIndex(){
        ModelAndView mv = new ModelAndView("Home");
        Helper.agregarUsuario(mv);
        return mv;
    }
    
    @RequestMapping(value = "/home.html")
    public ModelAndView frmPrincipal(){
        ModelAndView mv = new ModelAndView("Home");
        Helper.agregarUsuario(mv);
        return mv;
    }
    
}
