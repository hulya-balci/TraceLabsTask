package com.task.step_definitions;

import com.task.pages.RegisterPage;
import com.task.utilities.BrowserUtils;
import com.task.utilities.ConfigurationReader;
import com.task.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class RegisterStepDefs {

     RegisterPage registerPage=new RegisterPage();

@Given("User on the registration page")
public void user_on_the_registration_page() {
    String url=ConfigurationReader.get("url");
       Driver.get().get(url);
}


    @Given("User enters {string} {string} {string} {string}")
    public void the_user_enters(String username, String password, String email, String confirmpaswrd) {
       registerPage.login(username,password,email,confirmpaswrd);

    }


    @Given("User clicks to {string}")
    public void the_user_clicks_to(String checkbox) {
        BrowserUtils.waitFor(7);
       registerPage.clickTo(checkbox);



    }



    @Then("{string} message should appear")
    public void message_should_appear(String expectedMsg) {
        String actualMsg= registerPage.getMsg(expectedMsg);
        Assert.assertEquals(expectedMsg,actualMsg);

    }




}
