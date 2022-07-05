/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Listeners;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Web application lifecycle listener.
 *
 * @author student
 */
@WebListener()
public class WebContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("網站初始化進行中(WebContextListener......");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("釋放資源中(WebContextListener......");
    }
}
