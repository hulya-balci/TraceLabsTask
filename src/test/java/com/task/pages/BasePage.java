package com.task.pages;

import com.task.utilities.Driver;
import org.openqa.selenium.By;
import org.openqa.selenium.support.PageFactory;

public abstract class BasePage {


    public BasePage() {
        PageFactory.initElements(Driver.get(), this);
    }



    public void moduleNames(String moduleName){

        Driver.get().findElement(By.xpath("//a[contains(text(),'"+moduleName+"')]")).click();

    }
    public void navigateTo(String categoryName,String productName){
        Driver.get().findElement(By.linkText(categoryName)).click();
        Driver.get().findElement(By.linkText(productName)).click();

    }

}
