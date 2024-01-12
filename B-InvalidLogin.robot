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
Launch Mobile and Open application_Ark
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression
    App_Launch_Ark 
    Sleep    10
    Swiping_Homescreen_Slide_The_Ark

    
# Login_with_Invalidpassword_User1_data
#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression
#     App_Launch_Ark 
#     Sleep    10
#     # Swiping_Homescreen_Slide_The_Ark
#     Validating_Login_Mainpage_The_Ark     
#     Validate_with_Validusername_Loginpage_The_Ark             steffy17minerva@gmail.com              Tahaan@07
    # Loginpage_with_Invalid_Password                          ${Invalid_password_message}


# Login_with_Invalidpassword_User2_data
#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression
#     Sleep    10
#     Validate_with_Validusername_Loginpage_The_Ark             steffy17minerva@gmail.com              Tahaan@08
#     Loginpage_with_Invalid_Password                          ${Invalid_password_message}


# Login_with_Invalidpassword_User3_data
#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression
#     Sleep    10
#     Enter_User_Name_InvalidPassword_Ark             steffy17minerva@gmail.com              Tahaan@09
#     Loginpage_with_Invalid_Password                          ${Ivalid_password_message}


# Login_with_Invalidpassword_User4_data
#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression
#     Sleep    10
#     Enter_User_Name_InvalidPassword_Ark             steffy17minerva@gmail.com              Tahaan@10
#     Loginpage_with_Invalid_Password                          ${Ivalid_password_message}


# Login_with_Invalidpassword_User5_data
#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression
#     Sleep    10
#     Enter_User_Name_InvalidPassword_Ark             steffy17minerva@gmail.com              Tahaan@11
#     Loginpage_with_Invalid_Password                          ${Ivalid_password_message}


# Login_with_Invalidpassword_User6_data
#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression
#     Sleep    10
#     Enter_User_Name_InvalidPassword_Ark             steffy17minerva@gmail.com              Tahaan@12
#     Loginpage_with_Invalid_Password                          ${Ivalid_password_message}


# Login_with_InvalidEmail_User1_data
#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression
#     App_Launch_Ark 
#     Sleep    10
#     Swiping_Ark_Homescreen_Slide     
#     Enter_User_Name_InvalidPassword_Ark             steffy17minerva@gmail.co              Tahaan@04
#     Loginpage_with_Invalid_Password                          ${Ivalid_password_message}



# Login_with_InvalidEmail_User2_data

#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression
#     Sleep    10
#     Enter_User_Name_InvalidPassword_Ark             steffy17minerva@gmail.cm              Tahaan@04
#     Loginpage_with_Invalid_Password                          ${Ivalid_password_message}


# Login_with_InvalidEmail_User3_data
#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression
#     Sleep    10
#     Enter_User_Name_InvalidPassword_Ark             steffy17minerva@gmil.com              Tahaan@04
#     Loginpage_with_Invalid_Password                          ${Ivalid_password_message}


# Login_with_InvalidEmail_User4_data
#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression
#     Sleep    10
#     Enter_User_Name_InvalidPassword_Ark             steffy17mineva@gmail.com              Tahaan@04
#     Loginpage_with_Invalid_Password                          ${Ivalid_password_message}


# Login_with_InvalidEmail_User5_data
#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression
#     Sleep    10
#     Enter_User_Name_InvalidPassword_Ark             steffy17minera@gmail.com              Tahaan@04
#     Loginpage_with_Invalid_Password                          ${Ivalid_password_message}


# Login_with_InvalidEmail_User6_data
#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression
#     Sleep    10
#     Enter_User_Name_InvalidPassword_Ark             steffy17minerv@gmail.com              Tahaan@04
#     Loginpage_with_Invalid_Password                          ${Ivalid_password_message}
