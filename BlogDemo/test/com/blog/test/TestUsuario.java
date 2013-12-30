

package com.blog.test;

import com.blog.dao.UsuarioDao;
import org.junit.Assert;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;


/**
 * Test transaccional. Realiza rollback al final del test.
 * @author IAR
 *
 */

@ContextConfiguration(locations = "/applicationContext.xml")
public class TestUsuario extends TestTransactional{

	    @Test
	    public void testCreateAccount() {
	        Assert.assertTrue(true);

	    }

}
