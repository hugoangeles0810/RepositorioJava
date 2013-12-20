/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blog.controladores;

import com.blog.entidades.Rol;
import com.blog.entidades.Usuario;
import com.blog.servicios.UsuarioServicioInterface;
import com.blog.util.Helper;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Hugo
 */
@Controller
public class RegistroController {
    
    @Autowired
    private UsuarioServicioInterface usuarioServicioInterface;
    
    @RequestMapping(value = "/registrarme.html", method = RequestMethod.GET)
    public ModelAndView frmRegistro(){
        ModelAndView mv = new ModelAndView("Registro");
        mv.addObject("usuario", new Usuario());
        return mv;
    }
    
    @RequestMapping(value = "/registro.html", method = RequestMethod.POST)
    public @ResponseBody Map registrarUsuario(@ModelAttribute("usuario") Usuario usuario) {
        Map mensajes = new HashMap();
        String msj;
        Usuario userFlagUserName;
        Usuario userFlagEmailUsuario;
        
        usuario.setPassword(Helper.md5(usuario.getPassword()));
        usuario.setRolId(new Rol(2));
        
        try {
            
            userFlagUserName = usuarioServicioInterface.getUsuarioByUserName(usuario.getUsuario());
            userFlagEmailUsuario = usuarioServicioInterface.getUsuarioByEmail(usuario.getCorreo());
            
            if (userFlagEmailUsuario==null) {
                if (userFlagUserName==null) {
                    msj = usuarioServicioInterface.registrarUsuario(usuario)?"Exito":"Error";
                }else{
                    throw new Exception("El usuario ya existe");
                }
                
            }else{
                throw new Exception("El e-mail ya esta registrado");
            }
            
            
        } catch (Exception e) {
            msj = e.getMessage();
            System.out.println("------------------");
            System.out.println("Error: " + msj);
            System.out.println("------------------");
        }
        
        mensajes.put("mensaje", msj);
        
        return mensajes;
    }
    
}
