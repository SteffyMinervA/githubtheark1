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
Resource     ${CURDIR}${/}..//..//Resources//Mobile//3.MyProfile.robot
Resource     ${CURDIR}${/}..//..//Variables//Mobile//3.MyProfile.robot



Suite Setup      Log   It will run only once before all testcase
Test Setup       Log   it will run onetime for all test case
Suite Teardown   Log   it will run onetime after all test case
Test Teardown    Log   it will run for every testcase at end

*** Test Cases ***
Validating_Launch_Application_The_Ark
    [Documentation]    Launching the application and verifying the Homescreen 
    App_Launch_Ark
    Sleep   10
    Validating_Login_Mainpage_The_Ark
    # Sleep   5
    # Validating_EditProfile_Profile_Picture_The_Ark
    # Sleep   5
    # Validating_About_The_Ark
    # Sleep   5
    # Validating_Edit_The_Ark 
    # Sleep   5
    # Validating_Date_of_birth
    # Sleep   5
    # Validating_Contact_The_Ark
    # Sleep   5
    # Validating_Contact_Privacy_Option 
    # Sleep   5
    # Validating_Email_Privacy_option
    # Sleep   5
    # Validating_Address_The_Ark
    # Sleep   5
    # Validating_Address_Privacy_Option
    # Sleep   5
    # Validating_My_Post
    # Sleep    5
    # Validating_My_Post_Posting_The_Ark
    # Sleep    5
    # Validating_My_Prayers
    # Sleep    5
    # Validating_Saved_Items
    # Sleep    5
    # Validating_Following
    Sleep    5
    Validating_Settings_The_Ark
    Sleep    5
    Validating_Language_Preference_The_Ark