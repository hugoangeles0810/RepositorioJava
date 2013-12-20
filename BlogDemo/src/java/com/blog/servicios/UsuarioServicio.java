/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blog.servicios;

import com.blog.entidades.Usuario;
import com.blog.negocio.UsuarioNegocio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Hugo
 */
@Service
public class UsuarioServicio implements UsuarioServicioInterface{
    
    @Autowired
    private UsuarioNegocio usuarioNegocio;

    @Override
    public boolean registrarUsuario(Usuario usuario) throws Exception {
        return usuarioNegocio.registrarUsuario(usuario);
    }

    @Override
    public Usuario getUsuarioByEmail(String email) throws Exception {
        return usuarioNegocio.getUsuarioByEmail(email);
    }

    @Override
    public Usuario getUsuarioByUserName(String username) throws Exception {
        return usuarioNegocio.getUsuarioByUserName(username);
    }
}
