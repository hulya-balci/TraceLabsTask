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



//
//    @Then("Account summary page should be displayed")
//    public void account_summary_page_should_be_displayed() {
//        BrowserUtils.waitFor(1);
//        String actualTitle=Driver.get().getTitle();
//        String expectedTitle="Account Summary";
//
//        Assert.assertTrue(actualTitle.contains(expectedTitle));
//        System.out.println("expectedTitle = " + expectedTitle);
//        System.out.println("actualTitle = " + actualTitle);
//
//
//
//
//    }
//
//    @When("Users login with valid {string} and {string}")
//    public void users_login_with_not_valid_and(String actualUsername, String actualPassword) {
//
//        RegisterPage registerPage =new RegisterPage();
//
//
//
//        registerPage.login(actualUsername,actualPassword);
//
//    }
//
//    @Then("Error message {string} display")
//    public void error_message_display(String expectedMsg) {
//
//        String actualMsg=new RegisterPage().errorMsg.getText();
//
//        System.out.println("actualMsg = " + actualMsg);
//        System.out.println("expectedMsg = " + expectedMsg);
//        Assert.assertEquals(expectedMsg,actualMsg);
//
//
//
//
//    }
//
//
@Given("User on the registration page")
public void user_on_the_registration_page() {
    String url=ConfigurationReader.get("url");
       Driver.get().get(url);
}


    @Given("User enters {string} {string} {string} {string}")
    public void user_enters(String string, String string2, String string3, String string4) {




    }


    @Given("User clicks to {string}")
    public void user_clicks_to(String string) {





    }






    @Then("{string} message should appear")
    public void message_should_appear(String string) {





    }




}
