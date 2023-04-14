package vote.service;

import java.io.Serializable;

public class User implements Serializable {
    private String username, password, hobby;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getHobby() {
        return hobby;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
