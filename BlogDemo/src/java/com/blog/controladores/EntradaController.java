/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blog.controladores;

import com.blog.entidades.Entrada;
import com.blog.entidades.Usuario;
import com.blog.servicios.EntradaServicioInterface;
import com.blog.servicios.UsuarioServicioInterface;
import com.blog.util.Helper;
import java.util.Date;
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
public class EntradaController {
    
    @Autowired
    private EntradaServicioInterface entradaServicioInterface;
    
    @Autowired
    private UsuarioServicioInterface usuarioServicioInterface;

    @RequestMapping(value = "/nueva-entrada.html")
    public ModelAndView frmNuevaEntrada() {
        ModelAndView mv = new ModelAndView("NuevaEntrada");
        Helper.agregarUsuario(mv);
        mv.addObject("entrada", new Entrada());
        return mv;
    }

    @RequestMapping(value = "/guarda-entrada.html", method = RequestMethod.POST)
    public @ResponseBody
    Map registrarEntrada(@ModelAttribute("entrada") Entrada entrada) {
        Map mensajes = new HashMap();
        String msj;
        Usuario user;

        try {
            user = usuarioServicioInterface.getUsuarioByUserName(Helper.userName());
            entrada.setUsuarioId(user);
            entrada.setFechaPublicacion(new Date());
            msj = entradaServicioInterface.guardarEntrada(entrada) ? "Exito" : "Error";

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