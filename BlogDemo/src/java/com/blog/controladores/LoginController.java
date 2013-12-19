/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blog.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author dev-pai-20
 */
@Controller
public class LoginController {
   
    @RequestMapping(value = "/logon.html", method = RequestMethod.GET)
    public String logon(){
        return "Login";
    }
}
