


package com.User;

public class UserDetails {
    private int id;
      private String name;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    private String email;
    private String pass;

    public UserDetails() {
        super();
    }

    public UserDetails(String name, String email, String pass) {
        super();
        this.name = name;
        this.email = email;
        this.pass = pass;
    }

    public String getName() {
        return name;
    }

    public void setName1(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
}
