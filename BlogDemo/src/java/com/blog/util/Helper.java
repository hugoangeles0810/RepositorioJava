/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blog.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author dev-pai-20
 */
public class Helper {
    static DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    
    static String formatearFecha(Calendar fecha){
        return dateFormat.format(fecha);
    }
    
    public static String md5(String input){
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(input.getBytes(), 0, input.length());
            String hashedPass = new BigInteger(1, messageDigest.digest()).toString(16);
            if (hashedPass.length() < 32) {
                hashedPass = "0" + hashedPass;
            }
            return hashedPass;
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(Helper.class.getName()).log(Level.SEVERE, ex.getMessage());
        }
        return "";
    }
    
    public static void agregarUsuario(ModelAndView modelo) {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        modelo.addObject("user", user.getUsername());        
        modelo.addObject("role", (user.getAuthorities().iterator().next().getAuthority()).equalsIgnoreCase("ROLE_ADMIN") ? "ADMINISTRADOR" : "USUARIO");
        modelo.addObject("menu",modelo.getViewName());
    }
//    
//    public static Usuario validarUsuario(Usuario usuario) throws ExcepcionNegocio{
//        if (usuario.getCodigo().isEmpty() 
//                || usuario.getApellidoPaterno().isEmpty()
//                || usuario.getNombre().isEmpty()
//                || usuario.getPassword().isEmpty()){
//            throw new ExcepcionNegocio("Fantan datos del usuario.");
//        }
//        return usuario;
//    }

}
