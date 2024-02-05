*** Settings ***
Documentation    Suite description
Library  Collections                                        
Library  AppiumLibrary
Library  String
Library  DateTime
Library  OperatingSystem
Library  Process
Library   BuiltIn


Resource     ${CURDIR}${/}..//..//Variables//Mobile//Configuration.robot
Resource     ${CURDIR}${/}..//..//Resources//Mobile//1.Landpage.robot
Resource     ${CURDIR}${/}..//..//Variables//Mobile//1.Landpage.robot


Suite Setup      Log   It will run only once before all testcase
Test Setup       Log   it will run onetime for all test case
Suite Teardown   Log   it will run onetime after all test case
Test Teardown    Log   it will run for every testcase at end

*** Test Cases ***
Validating_Launch_Application_The_Ark
    [Documentation]    Launching the application and verifying the Homescreen 
    App_Launch_Ark 
    Sleep   10
    Swiping_Homescreen_Slide_The_Ark

Validating_About_Front_The_Ark
    [Documentation]    Verify the About the Ark
    Validating_About_Ark_The_Ark
    Sleep   5
    Validating_About_Ark_Mainpage_The_Ark
    Sleep   5
    Validate_with_Support_with_Us_The_Ark

Validating_Register_The_Ark
    [Documentation]    Verify the Register the Ark
    Validating_Register_Mainpage_The_Ark
    Sleep   5
    Validating_Register_page_The_Ark
    Sleep   5

Validating_LogOut_The_Ark   
    [Documentation]    Verify the Logout the Ark 
    Logout_The_Ark
    Sleep   5
    Validate_with_Validusername_Loginpage_The_Ark
