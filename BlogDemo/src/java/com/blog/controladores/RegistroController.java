/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blog.controladores;

import com.blog.entidades.Usuario;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Hugo
 */
@Controller
public class RegistroController {
    
    @RequestMapping(value = "/registrarme.html", method = RequestMethod.GET)
    public ModelAndView logon(){
        ModelAndView mv = new ModelAndView("Registro");
        mv.addObject("usuario", new Usuario());
        return mv;
    }
    
}
