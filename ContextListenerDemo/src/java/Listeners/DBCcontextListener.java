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
public class DBCcontextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("資料庫連線確認中(DBContextListener......");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("資料庫暫存釋放中(DBContextListener......");
    }
}
