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
Resource     ${CURDIR}${/}..//..//Resources//Mobile//6.Groups.robot
Resource     ${CURDIR}${/}..//..//Variables//Mobile//6.Groups.robot



Suite Setup      Log   It will run only once before all testcase
Test Setup       Log   it will run onetime for all test case
Suite Teardown   Log   it will run onetime after all test case
Test Teardown    Log   it will run for every testcase at end

*** Test Cases ***

Validating_My_Groups
    App_Launch_Ark
    Sleep    10
    Validating_Login_Mainpage_The_Ark
    Sleep    10
    Validating_My_Organisation_The_Ark
    Sleep    10
    Validating_My_Organisation_Navigation_The_Ark
    Sleep    10
    Validating_My_Org_CreateGroup_The_Ark