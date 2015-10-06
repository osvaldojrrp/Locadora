package br.com.intelliweb.controllers;

import org.apache.tiles.TilesContainer;
import org.apache.tiles.access.TilesAccess;
import org.apache.tiles.request.ApplicationContext;
import org.apache.tiles.request.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by osvaldojunior on 20/08/15.
 */
@Controller
public class LoginController
{
    @Autowired
    private HttpServletRequest request ;

    @RequestMapping(value="/login")
    public String index(@RequestParam(required = false) String error) {

        if(error != null && error.equals("true")) {
            return "login/login-erro";
        }

        return "login/login";
    }

    @RequestMapping(value="/home")
    public String home() {
        return "home";
    }

    @RequestMapping(value="/helloworld")
    public String helloWorld() {

        return "helloworld";
    }

}
