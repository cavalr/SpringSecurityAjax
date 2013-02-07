package com.blog.cavalr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {

    @Autowired
    private AuthenticationManager authenticationManager;

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public @ResponseBody LoginDetail login(@RequestBody User user) {

        Authentication authenticationToken =
                new UsernamePasswordAuthenticationToken(user.getUserName(), user.getPassword());
        try {
            Authentication authentication = authenticationManager.authenticate(authenticationToken);
            SecurityContextHolder.getContext().setAuthentication(authentication);
            return new LoginDetail().success().principal(authentication.getName());
        } catch (AuthenticationException ex) {
            return new LoginDetail().failed();
        }
    }

    @RequestMapping(value = "/postLogin", method= RequestMethod.GET)
    public String createUser() {
        return "postLogin";
    }
}
