package ru.qatools.school.vorobushek.models;


<<<<<<< HEAD
import org.javalite.activejdbc.Model;
=======
import java.security.Principal;
>>>>>>> FETCH_HEAD

/**
 * Created by yurik on 19.11.14.
 */
<<<<<<< HEAD
public class User extends Model {

    public String getLogin() {
        return getString("login");
    }

    public void setLogin(String login) {
        setString("login", login);
    }

    public String getEmail() {
        return getString("email");
    }

    public void setEmail(String email) {
        setString("email", email);
    }

    public String getDisplayName() {
        return getString("displayName");
    }

    public void setDisplayName(String displayName) {
        setString("displayName", displayName);
    }

=======
public class User implements Principal {

    private String login;

    private String email;

    private String displayName;


    public User(String login, String email, String displayName){
        this.login = login;
        this.email = email;
        this.displayName = displayName;
    }

    public String getEmail(){ return email; }
    public String getLogin(){ return login; }
    public String getDisplayName(){ return displayName; }

    @Override
    public String getName() {
        return displayName;
    }
>>>>>>> FETCH_HEAD
}
