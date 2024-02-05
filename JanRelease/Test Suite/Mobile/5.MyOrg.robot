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
Resource     ${CURDIR}${/}..//..//Resources//Mobile//5.MyOrg.robot
Resource     ${CURDIR}${/}..//..//Variables//Mobile//5.MyOrg.robot



Suite Setup      Log   It will run only once before all testcase
Test Setup       Log   it will run onetime for all test case
Suite Teardown   Log   it will run onetime after all test case
Test Teardown    Log   it will run for every testcase at end

*** Test Cases ***

Validating_Global_Feed_PAGE_tHE_Ark
    App_Launch_Ark
    Sleep   10
    Validating_Login_Mainpage_The_Ark

Validation_01
    Sleep    10
    Validating_My_Organisation_The_Ark
    Sleep  10

Validation_02
    Validating_My_Organisation_Navigation_The_Ark
     Sleep  10

Validation_03
    Validating_My_Organisation_EditImage_The_Ark

Validation_04
    Sleep  10
    Validating_My_Org_Create_post_The_Ark 

Validation_05
    Validating_The_Post_posted

    My_Org_About_The_Ark
    Count_Elements_With_Dynamic_XPath_GlobalAdmin
    Count_Elements_With_Dynamic_XPath_GlobalAdmin_Changing_the_Role
    Sleep  5
    Depromote_Admin
    Sleep  5
    Navigation_Global
    Sleep  5
    Validatin_Inside_About
    Sleep  5
    Validaing_Admin
    Sleep  5
    Count_Elements_With_Dynamic_XPath_GlobalAdmin
    Sleep  5
    Count_Elements_With_Dynamic_XPath_GlobalAdmin_Changing_the_Role
    Sleep  5
    Promote_Global
    Sleep  5
    Navigation_Global
    Sleep  5
    Validating_Member
    Sleep  5
    Count_Elements_With_Dynamic_XPath_GlobalAdmin
    Sleep  5
    Count_Elements_With_Dynamic_XPath_GlobalAdmin_Changing_the_Role
    Sleep  5
    Promote_Global
    Sleep  5
    Navigation_Global
    Sleep  5
    My_Org_Contact_The_Ark
    Sleep  5
    My_Org_Followers_The_Ark