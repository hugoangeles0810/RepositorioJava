/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blog.negocio;

import com.blog.dao.EntradaDao;
import com.blog.entidades.Entrada;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 *
 * @author Hugo
 */
@Component
public class EntradaNegocio {
    
    @Autowired
    private EntradaDao entradaDao;

    public boolean guardarEntrada(Entrada entrada) throws Exception {
        return entradaDao.guardarEntrada(entrada);
    }
    
}
