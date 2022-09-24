package org.definition;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;

public class StepDefinition {
	WebDriver driver;
@Given("User launch Gmail Web Application")
public void user_launch_Gmail_Web_Application() {
	WebDriverManager.chromedriver().setup();
	driver = new ChromeDriver();
	driver.get("https://www.google.com/intl/en-GB/gmail/about/");
}

@When("User click on the get gmail Button")
public void user_click_on_the_get_gmail_Button() {
	driver.findElement(By.xpath("(//span[text()='Create an account'])[1]")).click();
}

@When("User enter the firstName,lastName,userName,password and Confirm password")
public void user_enter_the_firstName_lastName_userName_password_and_Confirm_password() {
	driver.findElement(By.id("firstName")).sendKeys("ragul");
	driver.findElement(By.id("lastName")).sendKeys("kumar");
	driver.findElement(By.id("username")).sendKeys("ragul987612345");
	driver.findElement(By.name("Passwd")).sendKeys("grennnsd");
	driver.findElement(By.name("ConfirmPasswd")).sendKeys("grennnsd");
	driver.findElement(By.xpath("//input[@type='checkbox']")).click();
	
}

@When("user click Next Button")
public void user_click_Next_Button() {
	driver.findElement(By.xpath("(//button[@type='button'])[1]")).click();
	
}

@When("user Enter the Valid Phone Number")
public void user_Enter_the_Valid_Phone_Number() {
   
}

@When("user click next Button")
public void user_click_next_Button() {
 
}

@When("User enter the verification code")
public void user_enter_the_verification_code() {
}

@When("click verify Button")
public void click_verify_Button() {
   
}
	
	
}
