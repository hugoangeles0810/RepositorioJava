/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blog.servicios;

import com.blog.entidades.Usuario;

/**
 *
 * @author Hugo
 */
public interface UsuarioServicioInterface {
 
    public boolean registrarUsuario(Usuario usuario) throws Exception;
    
    public Usuario getUsuarioByEmail(String email) throws Exception;
    
    public Usuario getUsuarioByUserName(String username) throws Exception;
    
}
