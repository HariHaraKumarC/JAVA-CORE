package hari.edu.j2ee.beans;

import javax.faces.bean.ManagedBean;

/**
 * Created by HariHaraKumar on 26/07/2018.
 */
@ManagedBean(name="helloWorld", eager = true)
public class HelloWorld {

    private String message;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

}
