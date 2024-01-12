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

###################Invalid_user_id_with_####################
Registration_for_Invalid_user1_with_mail_Ark
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression
    App_Launch_Ark 
    Sleep    10
    Swiping_Homescreen_Slide_The_Ark
    Validating_Register_Mainpage_The_Ark         
    Validating_Register_page_The_Ark          Username1        A        theark12000@gmail.com        Abcd@123        6745567543210     607985        Male
    Registration_Invalid_phonenumber_Verification_The_Ark                         ${Email_error_message}
    
    
    

Registration_for_Invalid_user2_with_mail_Ark
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression
    Sleep    10
    Validate_Login_Page_And_Register_For_New_User_The_Ark       
    Validating_Register_page_The_Ark        Username2        B        theark12400@gmail.com        Efgh@456        7654321098        607986        Female                   
    Registration_Invalid_Mail_Verification_The_Ark                         ${Email_error_message}
    


Registration-for_Invalid_user3_with_mail_Ark
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression 
    Sleep    10      
    Validate_Login_Page_And_Register_For_New_User_The_Ark 
    Validating_Register_page_The_Ark        Username3        C        theark12345@gmail.com        Ijkl@789        98771543212        607987        Other        
    Registration_Invalid_Mail_Verification_The_Ark                         ${Email_error_message}
   


Registration-for_Invalid_user4_with_mail_Ark
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression
    Sleep    10        
    Validate_Login_Page_And_Register_For_New_User_The_Ark
    Validating_Register_page_The_Ark        Username4        D        theark123456@gmail.com        Mnop@0123        987643213        607988        Male            
    Registration_Invalid_Mail_Verification_The_Ark                         ${Email_error_message}
   


Registration-for_Invalid_user5_with_mail_Ark
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression 
    Sleep    10   
    Validate_Login_Page_And_Register_For_New_User_The_Ark    
    Validating_Register_page_The_Ark        Username5        E        theark1234567@gmail.com        Qrstu@456           987643214        607989        Female    
    Registration_Invalid_Mail_Verification_The_Ark                         ${Email_error_message}
   

    
Registration_for_Invalid_user6_with_mail_Ark
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression
    Sleep    10   
    Validate_Login_Page_And_Register_For_New_User_The_Ark    
    Validating_Register_page_The_Ark        Username6        F         theark123456789@gmail.com        vwxyz@789        987643215        607990        Other                
    Registration_Invalid_Mail_Verification_The_Ark                         ${Email_error_message}
    
####################Invalid_user_id_with_phonenumber####################
 Registration_for_Invalid_user1_with_phonenumber_Ark
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression
    # App_Launch_Ark 
    # Sleep    10
    # Swiping_Ark_Homescreen_Slide 
    Validate_Login_Page_And_Register_For_New_User_The_Ark       
    Validating_Register_page_The_Ark          Username1        A        theark00101@gmail.com        Abcd@123        6745567543210     607985        Male
    Registration_Invalid_phonenumber_Verification_The_Ark                          ${Mobile_error_message}
   
    
    

Registration_for_Invalid_user2_with_phonenumber_Ark
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression
    Sleep    10       
    Validate_Login_Page_And_Register_For_New_User_The_Ark
    Validating_Register_page_The_Ark        Username2        B        theark1123000@gmail.com        Efgh@456        7654321098        607986        Female                   
    Registration_Invalid_phonenumber_Verification_The_Ark                          ${Mobile_error_message}
    


Registration_for_Invalid_user3_with_phonenumber_Ark
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression 
    Sleep    10
    Validate_Login_Page_And_Register_For_New_User_The_Ark       
    Validating_Register_page_The_Ark        Username3        C        theark11234500@gmail.com        Ijkl@789        98771543212        607987        Other        
    Registration_Invalid_phonenumber_Verification_The_Ark                          ${Mobile_error_message}
   


Registration_for_Invalid_user4_with_phonenumber_Ark
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression
    Sleep    10    
    Validate_Login_Page_And_Register_For_New_User_The_Ark    
    Validating_Register_page_The_Ark        Username4        D        theark1234560@gmail.com        Mnop@0123        987643213        607988        Male            
    Registration_Invalid_phonenumber_Verification_The_Ark                          ${Mobile_error_message}
   


Registration_for_Invalid_user5_with_phonenumber_Ark
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression 
    Sleep    10 
    Validate_Login_Page_And_Register_For_New_User_The_Ark      
    Validating_Register_page_The_Ark        Username5        E        theark12345670@gmail.com        Qrstu@456           987643214        607989        Female    
    Registration_Invalid_phonenumber_Verification_The_Ark                          ${Mobile_error_message}
   
    
Registration_for_Invalid_user6_with_phonenumber_Ark
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression
    Sleep    10       
    Validate_Login_Page_And_Register_For_New_User_The_Ark
    Validating_Register_page_The_Ark        Username6        F         theark1234567890@gmail.com        vwxyz@789        987643215        607990        Other                
    Registration_Invalid_phonenumber_Verification_The_Ark                          ${Mobile_error_message}
    









