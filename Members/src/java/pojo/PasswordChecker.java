/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;

import java.io.IOException;
import java.nio.file.Path;
import java.util.List;

/**
 *
 * @author student
 */
public class PasswordChecker implements java.io.Serializable {
    private String account;
    private String passwd;
    private int result;
    //
    Path passwdFile ;
    List<String>passContent;
    //
    public PasswordChecker() throws IOException {
        // 指向密碼檔 passFile
        passwdFile = java.nio.file.Paths.get("c:/web/passwd.txt");
        // 將密碼檔案的內容載入 passContent;
        passContent = java.nio.file.Files.readAllLines(passwdFile);
    }

    // 驗證密碼
    public void checkPass() {
        result = 0;
        for(String line : passContent ) {
            String [] user = line.split(",");
            if( user[0].equals(account) && user[1].equals(passwd)) {
                result=1;
                break;
            }
        }
    }
    
    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }
    
    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public int getResult() {
        return result;
    }
    
}
