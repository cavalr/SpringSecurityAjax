package com.blog.cavalr;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static junit.framework.Assert.assertEquals;

/**
 * Description
 *
 * @author Baljit Garcha
 * @version 2/5/13
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:/spring/securityContext.xml", "classpath:/spring/applicationContext.xml"})
public class UserControllerTest {

    @Autowired
    private UserController userController;

    @Test
    public void testLogin() throws Exception {
        LoginDetail loginDetail = userController.login(new User("test", "test123"));
        assertEquals("test", loginDetail.getPrincipal());
    }
}
