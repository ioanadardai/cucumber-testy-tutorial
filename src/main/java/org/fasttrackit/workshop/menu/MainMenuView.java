package org.fasttrackit.workshop.menu;

import com.sdl.selenium.web.button.Button;
import com.sdl.selenium.web.link.WebLink;

/**
 * Created by Cuchi on 7/4/2015.
 */
public class MainMenuView {

    public static Button preferencesButton = new Button().setText("Preferences");
    public static WebLink logoutLink = new WebLink().setText("Logout");

    public static void logout(){
        logoutLink.assertClick();
    }
}
