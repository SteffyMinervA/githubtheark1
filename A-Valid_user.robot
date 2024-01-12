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
# Launch Mobile and Open application_Ark
#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression  
#     App_Launch_Ark 
#     Sleep    10
#     Swiping_Homescreen_Slide_The_Ark


Registration_for_Valid_user1_Ark
    [Documentation]  Lanching Ark application and performing login
    [Tags]        AndroidAutomationRegression
    App_Launch_Ark 
    # Sleep    10
    # Swiping_Homescreen_Slide_The_Ark
    Validating_Register_Mainpage_The_Ark        
    Validating_Register_page_The_Ark         Username1        A        theak12000111@gmail.com        Abcd@123        744321000            607985        Male  
    Logout_The_Ark
    

# Registration_for_Valid_user2_Ark
#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression
#     Sleep   10
#     Validate_Login_Page_And_Register_For_New_User_The_Ark      
#     Validating_Register_page_The_Ark        Username2        B        theark124001@gmail.com        Efgh@456        76543210981        607986        Female                   
#     Logout_The_Ark


# Registration-for_Valid_user3_Ark
#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression
#      Sleep   10
#     Validate_Login_Page_And_Register_For_New_User_The_Ark         
#     Validating_Register_page_The_Ark        Username3        C        theark123451@gmail.com        Ijkl@789        987715432121        607987        Other        
#     Logout_The_Ark


# Registration-for_Valid_user4_Ark
#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression
#     Sleep   10
#     Validate_Login_Page_And_Register_For_New_User_The_Ark        
#     Validating_Register_page_The_Ark        Username4        D        theark1234561@gmail.com        Mnop@0123        9876432131        607988        Male            
#     Logout_The_Ark


# Registration-for_Valid_user5_Ark
#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression
#     Sleep   10
#     Validate_Login_Page_And_Register_For_New_User_The_Ark         
#     Validating_Register_page_The_Ark        Username5        E        theark12345671@gmail.com        Qrstu@456           9876432141        607989        Female    
#     Logout_The_Ark

    
# Registration-for_Valid_user6_Ark
#     [Documentation]  Lanching Ark application and performing login
#     [Tags]        AndroidAutomationRegression
#     Sleep   10
#     Validate_Login_Page_And_Register_For_New_User_The_Ark        
#     Validating_Register_page_The_Ark        Username6        F         theark1234567891@gmail.com        vwxyz@789        9876432151        607990        Other                
#     Logout_The_Ark









