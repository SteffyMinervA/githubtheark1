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
Resource     ${CURDIR}${/}..//..//Variables//Mobile//2.HomeScreenpage.robot
Resource     ${CURDIR}${/}..//..//Resources//Mobile//2.HomeScreenpage.robot

Suite Setup      Log   It will run only once before all testcase
Test Setup       Log   it will run onetime for all test case
Suite Teardown   Log   it will run onetime after all test case
Test Teardown    Log   it will run for every testcase at end

*** Test Cases ***
Validating_Home_Main_Screen_data
    App_Launch_Ark
    Sleep   5
    Validating_Login_Mainpage_The_Ark
    Sleep  5
    Validating_HomeScreen_Page
    Sleep   5
    Validating_MainFeedPage_The_Ark