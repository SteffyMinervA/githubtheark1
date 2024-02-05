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
Resource     ${CURDIR}${/}..//..//Resources//Mobile//7.New&more.robot
Resource     ${CURDIR}${/}..//..//Variables//Mobile//7.New&more.robot



Suite Setup      Log   It will run only once before all testcase
Test Setup       Log   it will run onetime for all test case
Suite Teardown   Log   it will run onetime after all test case
Test Teardown    Log   it will run for every testcase at end

*** Test Cases ***

Validaing_News
  App_Launch_Ark
  Sleep   10
  Validating_Login_Mainpage_The_Ark
  # Sleep   10
  # Validating_The_News_Icon
  # Sleep    10
  # Validating_Horizontal_News
  # Swiping_News_Slide_The_Ark

Validating_More_Options
   More_Options
