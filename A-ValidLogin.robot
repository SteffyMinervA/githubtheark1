*** Settings ***
Documentation    Suite description
Library  Collections                                        
Library  AppiumLibrary
Library  String
Library  DateTime
Library  OperatingSystem
Library  Process
Library   BuiltIn




# Resource     ${CURDIR}${/}..//..//..//Library//ArkMain.robot
Resource     ${CURDIR}${/}..//..//..//Library//CommonKey.robot
Resource     ${CURDIR}${/}..//..//..//Library//Configuration.robot
Resource     ${CURDIR}${/}..//..//..//Resources//Variables.robot



Suite Setup      Log   It will run only once before all testcase
Test Setup       Log   it will run onetime for all test case
Suite Teardown   Log   it will run onetime after all test case
Test Teardown    Log   it will run for every testcase at end



*** Test Cases ***
# Launch Mobile and Open application_Ark
#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression
#     App_Launch_Ark 
#     Sleep    10
#     Swiping_Homescreen_Slide_The_Ark

    
Login_with_Valid_User1_data
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression
    App_Launch_Ark 
    # Sleep    10
    # Swiping_Homescreen_Slide_The_Ark     
    Validating_Login_Mainpage_The_Ark                                                    
    Validate_with_Validusername_Loginpage_The_Ark            theark12000@gmail.com        Abcd@123
    Logout_The_Ark
    

Login_with_Valid_User2_data
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression
    Sleep    10
    Validate_with_Validusername_Loginpage_The_Ark            theark12400@gmail.com        Efgh@456
    Logout_The_Ark



Login_with_Valid_User3_data
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression
    Sleep    10
    Validate_with_Validusername_Loginpage_The_Ark             theark12345@gmail.com        Ijkl@789
    Logout_The_Ark



Login_with_Valid_User4_data
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression
    Sleep    10
    Validate_with_Validusername_Loginpage_The_Ark            theark123456@gmail.com        Mnop@0123
    Logout_The_Ark



Login_with_Valid_User5_data
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression
    Sleep    10
    Validate_with_Validusername_Loginpage_The_Ark             theark1234567@gmail.com        Qrstu@456
    Logout_The_Ark



Login_with_Valid_User6_data
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression
    Sleep    10
    Validate_with_Validusername_Loginpage_The_Ark             theark123456789@gmail.com        vwxyz@789
    Logout_The_Ark
 
