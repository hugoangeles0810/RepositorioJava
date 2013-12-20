/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blog.negocio;

import com.blog.dao.UsuarioDao;
import com.blog.entidades.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 *
 * @author Hugo
 */
@Component
public class UsuarioNegocio {
    
    @Autowired
    private UsuarioDao usuarioDao;

    public boolean registrarUsuario(Usuario usuario) throws Exception {
        return usuarioDao.registrarUsuario(usuario);
    }

    public Usuario getUsuarioByEmail(String email) throws Exception {
        return usuarioDao.getUsuarioByEmail(email);
    }

    public Usuario getUsuarioByUserName(String username) throws Exception {
        return usuarioDao.getUsuarioByUserName(username);
    }
    
}
