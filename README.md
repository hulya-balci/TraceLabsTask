# TraceLabsTask

This is a maven project.

Java language and OOP concept has been used.

Build up with Cucumber-Junit framework.(Feature File,StepDefinitions,Runner class, Hooks)

Resources/Feature file where I keep test scenarios. It is written with plain English by using Gherkin Language. 

Step Definitions are java classes where all java code is written in it.

Runner class is text executer. Working by Tags. it also has rerun and report extension.

Hooks class is where I keep my before, after methods and secreenshoot method for report.

Page Object Model design pattern has been used.(Configuration properties,Configuration readers,pages,Utilities)

Pom.xml is brain of our project I put all kind of dependencies and libraries are needed. 
Configuration Properties is a central for saving all necesary data(url,browser,credentials). 
Pages: each web page has a corresponding java class where I keep all necesary locators and methods. 
Utilities folder has Driver,Browser Utils and Configuration Readers class.

Reports: Default-html-reports and cucumber-html-reports are implemented in Target folder that you can see them as well.

The only challenge in this task is re-captcha part because with selenium it is impossible to pass captchas.
In my last project I have never dealed with it, because our developers already disable it for QA environment and again enable it in production environment. 
As I searched from internet the most accurate way give some waits and do it manually I did it and the test passed.
So whoever is going to check the task must consider this point and manually click the "I am not a robot" checkbox 


The task can be run in different browsers as chrome,firefox,chrome-headless,firefox-headless.

