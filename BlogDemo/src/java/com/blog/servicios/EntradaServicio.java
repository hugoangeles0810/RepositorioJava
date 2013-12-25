/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blog.servicios;

import com.blog.entidades.Entrada;
import com.blog.negocio.EntradaNegocio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Hugo
 */
@Service
public class EntradaServicio implements EntradaServicioInterface{
    
    @Autowired
    private EntradaNegocio entradaNegocio;

    @Override
    public boolean guardarEntrada(Entrada entrada) throws Exception {
        return entradaNegocio.guardarEntrada(entrada);
    }
    
}
