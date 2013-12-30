/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blog.servicios;

import com.blog.entidades.Entrada;
import java.util.List;

/**
 *
 * @author Hugo
 */
public interface EntradaServicioInterface {
    
    public boolean guardarEntrada(Entrada entrada) throws Exception;
    
    public List<Entrada> getListaUltimasEntradas() throws Exception;
    
}
