/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blog.dao;

import com.blog.entidades.Entrada;
import com.blog.util.ExcepcionNegocio;
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
public class EntradaDao extends HibernateDaoSupport {
    
    @Autowired
    public EntradaDao(SessionFactory sessionFactory) {
        super.setSessionFactory(sessionFactory);
    }
    
    public boolean guardarEntrada(Entrada entrada) throws Exception{
        boolean rpta = false;
        
        try {
            getHibernateTemplate().save(entrada);
            rpta = true;
        } catch (Exception e) {
            throw new ExcepcionNegocio("Error Dao: " +e.getMessage());
        }
        
        return rpta;
    }
    
    public List<Entrada> getListaUltimasEntradas() throws Exception{
        List<Entrada> listEntradas;
        listEntradas = getHibernateTemplate().find("SELECT e FROM Entrada e ORDER BY e.fechaPublicacion");
        return listEntradas;
    }
    
}
