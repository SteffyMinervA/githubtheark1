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
    App_Launch_Ark 
    Sleep    10
    Swiping_Ark_Homescreen_Slide
    Validating_Ark_Home_Screen_And_Login
    Validating_And_Entering_User_Name_Password_Ark
    Validating_The_Ark_My_Posts
#    Validating_The_Ark_Home_Screen_SearchButton

#    Logout_Ark


    
    



  