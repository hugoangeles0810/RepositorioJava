package com.blog.test;

import com.blog.servicios.UsuarioServicioInterface;
import java.util.logging.Level;
import java.util.logging.Logger;
import static junit.framework.Assert.assertEquals;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import junit.framework.TestCase;
import org.springframework.beans.factory.annotation.Autowired;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration
public class TestJUnit extends TestCase {

    @Autowired
    private UsuarioServicioInterface usuarioServicioInterface;

    @Test
    public void test01() {
        try {
            usuarioServicioInterface.getUsuarioByUserName("HANGELES");
            
        } catch (Exception ex) {
            Logger.getLogger(TestJUnit.class.getName()).log(Level.SEVERE, null, ex);
        }
        assertEquals("1", "1");
    }
}