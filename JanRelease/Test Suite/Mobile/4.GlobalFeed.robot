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
Resource     ${CURDIR}${/}..//..//Resources//Mobile//4.GlobalFeed.robot
Resource     ${CURDIR}${/}..//..//Variables//Mobile//4.GlobalFeed.robot



Suite Setup      Log   It will run only once before all testcase
Test Setup       Log   it will run onetime for all test case
Suite Teardown   Log   it will run onetime after all test case
Test Teardown    Log   it will run for every testcase at end

*** Test Cases ***

Validating_Global_Feed_PAGE_tHE_Ark
    App_Launch_Ark
    Sleep   10
    Validating_Login_Mainpage_The_Ark
    Sleep    10
    Validating_Global_Feed
    Sleep  10
    Swiping_GlobalFeed_Slide_The_Ark
     Sleep  10
    Validating_Comics_Feed
     Sleep  10
    Swiping_Comics_Slide_The_Ark
     Sleep  10
    Validating_Entertainment_FeedPage
     Sleep  10
    Validating_NewCategory_FeedPage
     Sleep  10
    Swipe_The_Slide_Above_All_Tab
     Sleep  10
    Validating_Science&Fiction_Feed
     Sleep  10
    Validating_Society_Feed
     Sleep  10
    Validating_Technology_Feed

