package org.runner;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
@RunWith(Cucumber.class)
@CucumberOptions(features="E:\\test\\GITClass\\resources\\Features\\SignUp.feature",glue="org.definition",dryRun=true)
public class TestRunner {
	
	
}
