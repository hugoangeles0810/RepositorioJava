/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blog.dao;

import com.blog.entidades.Usuario;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Hugo
 */
@Repository
public class UsuarioDao extends HibernateDaoSupport {

    @Autowired
    public UsuarioDao(SessionFactory sessionFactory) {
        super.setSessionFactory(sessionFactory);
    }

    public boolean registrarUsuario(Usuario usuario) throws Exception {
        boolean rpta = false;

        try {
            if (usuario != null) {
                getHibernateTemplate().save(usuario);
                rpta = true;
            }
        } catch (Exception e) {
            throw new Exception("Error Dao: " + e.getMessage());
        }

        return rpta;
    }

    public Usuario getUsuarioByEmail(String email) throws Exception {
        Usuario user = null;

        try {
            List<Usuario> listUsers = getHibernateTemplate().find("SELECT u FROM Usuario u WHERE u.correo=?", email);

            if (!listUsers.isEmpty()) {
                user = listUsers.get(0);
            }
        } catch (Exception e) {
            throw new Exception("Error Dao: " + e.getMessage());
        }

        return user;
    }
    
    public Usuario getUsuarioByUserName(String username) throws Exception {
        Usuario user = null;

        try {
            List<Usuario> listUsers = getHibernateTemplate().find("SELECT u FROM Usuario u WHERE u.usuario=?", username);

            if (!listUsers.isEmpty()) {
                user = listUsers.get(0);
            }
        } catch (Exception e) {
            throw new Exception("Error Dao: " + e.getMessage());
        }

        return user;
    }
}
