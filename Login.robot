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
Resource     ${CURDIR}${/}..//..//Library//CommonKey.robot
Resource     ${CURDIR}${/}..//..//Library//Configuration.robot
Resource     ${CURDIR}${/}..//..//Resources//Variables.robot



Suite Setup      Log   It will run only once before all testcase
Test Setup       Log   it will run onetime for all test case
Suite Teardown   Log   it will run onetime after all test case
Test Teardown    Log   it will run for every testcase at end



*** Test Cases ***
Launch_Application_The_Ark
    [Documentation]        Launching the application and verifying the Homescreen 
    App_Launch_Ark 
    Sleep    10
    Validating_Login_Mainpage_The_Ark               steffy17minerva@gmail.com             Tahaan@05  
    Validating_ProfileImage_The_Ark
    EditProfile_Profile_Picture
    Profile_Attachment_The_Ark
    # About_The_Ark 
    Contact_The_Ark 
    



    # Validating_the_EditProfile_Image
    # Swiping_Homescreen_Slide_The_Ark

# About_The_Ark  
#     [Documentation]     Validating the About    
#     Validating_About_Ark_The_Ark
#     Validating_About_Ark_Mainpage_The_Ark
#     Validate_with_Support_with_Us_The_Ark           


# Registration_The_Ark
    #  Validating_Register_Mainpage_The_Ark
    #  Validating_Register_page_The_Ark                       
#     Logout_The_Ark
# Validating_the_New_UserAccount  
#     Validate_with_Validusername_Loginpage_The_Ark            thearktesting123470@gmail.com        Abcd1@12361
#     Validating_MainFeedPage_The_Ark
#     Validating_Main_More_Option_The_Ark
#     Validating_My_Profile_The_Ark                             Abcd1@12361                Dbcd@1123                     Dbcd@1123
#     Validate_with_Validusername_Loginpage_The_Ark             thearktesting123470@gmail.com        Abcd1@12361
#     Loginpage_with_Invalid_Password                           Invalid email or password
    # Validating_Login_Mainpage_The_Ark
    # Validate_with_Validusername_Loginpage_The_Ark             steffy17minerva@gmail.com        Tahaan@05
    # Validating_MainFeedPage_The_Ark
    # Validate_with_PendingInvites_The_Ark
    # Validate_with_Notification_The_Ark
    # Logout_The_Ark