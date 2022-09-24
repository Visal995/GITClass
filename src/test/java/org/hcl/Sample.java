package org.hcl;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.github.bonigarcia.wdm.WebDriverManager;

public class Sample {

	@Test
	public void signUp() {
	WebDriverManager.chromedriver().setup();
	WebDriver driver = new ChromeDriver();
	driver.get("https://www.google.com/intl/en-GB/gmail/about/");
	driver.findElement(By.xpath("(//span[text()='Create an account'])[1]")).click();
	driver.findElement(By.id("firstName")).sendKeys("ragul");
	driver.findElement(By.id("lastName")).sendKeys("kumar");
	driver.findElement(By.id("username")).sendKeys("ragul9876");
	driver.findElement(By.name("Passwd")).sendKeys("grennnsd");
	driver.findElement(By.name("ConfirmPasswd")).sendKeys("grennnsd");
	driver.findElement(By.xpath("//input[@type='checkbox']")).click();
	driver.findElement(By.xpath("(//button[@type='button'])[1]")).click();
	
	}	
}
