*** Settings ***
Documentation    Suite description
Library  Collections
Library  AppiumLibrary
Library  String
Library  DateTime
Library  OperatingSystem
Library  Process
Library   XML
Library   BuiltIn





Resource     ${CURDIR}${/}..//..//Variables//Mobile//1.Landpage.robot
Resource     ${CURDIR}${/}..//..//Variables//Mobile//Configuration.robot

   



*** Keywords ***
App_Launch_Ark
        [Documentation]     Open The Ark application
        Log                 ${DEVICE_NAME}
        Open Application    ${APPIUM_SERVER}    platformName=${PLATFORM_NAME}   platformVersion=${PLATFORM_VERSION}
        ...                 udid=${DEVICE_ID}   deviceName=${DEVICE_NAME}   appPackage=${PACKAGE_NAME0}   appActivity=${ACTIVITY_NAME0}
        Set Appium Timeout  180


Swiping_Homescreen_Slide_The_Ark
        [Documentation]        Swipe left
        @{ValidatingRegisterPageText}=  Create List        Send a prayer,          ${Description_1}                             
        Page Should Contain Text    @{ValidatingRegisterPageText}
        FOR     ${result}   IN RANGE    0   5
            Swipe   1060     1640   80    1660
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==2
        END

    

Validating_About_Ark_The_Ark
        [Documentation]                    Validating Register screen
        
        @{Validatingmultipletextark}=  Create List       Register        About Ark         
        Page Should Contain Text    @{Validatingmultipletextark}
        Sleep    2
        Click Element       ${About_Ark}


Validating_About_Ark_Mainpage_The_Ark
        [Documentation]                    Validating Aboutark screen
        @{Validatingmultipletextark}=  Create List          About Ark          Connect with us                         
        Page Should Contain Text    @{Validatingmultipletextark}
        Sleep    10
        Click Element       ${About_Ark_Connectwithus}


Generate_Random_Username
    [Documentation]     Keywords for generating new Username
    ${random_string}    Generate Random String    8  [LETTERS]/
    ${firstname}    Set Variable    ${random_string}
    [Return]    ${firstname}  


Generate_Random_Email
    [Documentation]     Keywords for generating new Email
    ${random_string}    Generate Random String    8    [NUMBERS]
    ${password}    Set Variable    email${random_string}@gmail.com
    [Return]    ${password}         


Give_Random_SubjectComment
    ${random_comment}=  Generate Random SubjectComment  
Generate_Random_SubjectComment
    ${comment_options}=  Create List  About Ark        Feedback         Have Information    App wil work      Good Process
    ${random_comment}=  Evaluate  random.choice($comment_options)
    [Return]  ${random_comment}


Give Random Comment
    ${random_comment}=  Generate Random Comment 
Generate_Random_Comment
    ${comment_options}=  Create List  Great job!  Well done.  Keep it up.  Needs improvement.  Good effort.
    ${random_comment}=  Evaluate  random.choice($comment_options)
    [Return]  ${random_comment}     
    

Validate_with_Support_with_Us_The_Ark
        [Documentation]        Support with Us
        ${Generate_Random_Username}        Generate Random Username
        ${Generate_Random_Email}           Generate Random Email
        ${Generate_Random_SubjectComment}  Generate Random SubjectComment
        ${Generate_Random_Comment}         Generate Random Comment


        @{ValidatingRegisterPageText}=  Create List     Let us know how to get back to you 
        Page Should Contain Text        @{ValidatingRegisterPageText}

        ${Status1}        Run Keyword And Return Status            Wait Until Page Contains               First Name            timeout=10
        Run Keyword If    "${Status1}"=="True"        Input Text          ${About_Ark_Firstname}            ${Generate_Random_Username}
        Sleep    2
        ${Status2}        Run Keyword And Return Status            Wait Until Page Contains                Your E-mail        timeout=10
        Run Keyword If    "${Status2}"=="True"        Input Text          ${About_Ark_Email}                 ${Generate_Random_Email}
        Sleep    2
        ${Status3}        Run Keyword And Return Status            Wait Until Page Contains               Subject            timeout=10
        Run Keyword If    "${Status3}"=="True"        Input Text          ${About_Ark_Subject}           ${Generate_Random_SubjectComment}
        Sleep    2
        ${Status4}        Run Keyword And Return Status            Wait Until Page Contains                Your E-mail        timeout=10
        Run Keyword If    "${Status4}"=="True"        Input Text          ${About_Ark_Comments}          ${Generate_Random_Comment}
        Sleep    2
        ${Status5}        Run Keyword And Return Status         wait Until Page Contains                  Submit           timeout=20
        Click Element            ${About_Ark_Submit}
        Sleep    5
        Click Element            ${About_Ark_Navigation}


Validating_Register_Mainpage_The_Ark
        [Documentation]                    Validating Register screen
        @{Validatingmultipletextark}=  Create List        Log in      Register          
        Page Should Contain Text        @{Validatingmultipletextark}
        Sleep    5
        Wait Until Element Is Visible         ${Register}                       timeout=30
        Click Element                 ${Register}      
        

Give_Random_Registerusername
    ${random_comment}=  Generate Random Registerusername  
Generate_Random_Registerusername
    ${comment_options}=  Create List  Username1        Username2         Username3     Username4      Username4
    ${random_comment}=  Evaluate  random.choice($comment_options)
    [Return]  ${random_comment}


Give_Random_Registerlastusername
    ${random_comment}=  Generate Random Registerlastusername  
Generate_Random_Registerlastusername
    ${comment_options}=  Create List  Ark1        Ark2         Ark3     Ark4      Ark5
    ${random_comment}=  Evaluate  random.choice($comment_options)
    [Return]  ${random_comment}


Give Random Phone Number
    ${random_phone_number}=  Generate Random Phone Number
Generate Random Phone Number
    ${area_code}=  Evaluate  random.randint(999, 99999)
    ${prefix}=  Evaluate  random.randint(5000, 9999)
    ${line_number}=  Evaluate  random.randint(15000, 90000)
    ${random_phone_number}=  Set Variable   91${area_code}${prefix}${line_number}
    [Return]  ${random_phone_number}


Give Random ZIP Code
    ${random_zip_code}=  Generate Random ZIP Code
Generate Random ZIP Code
    ${zip_code}=  Evaluate  f"{random.randint(10000, 99999):05d}"
    [Return]  ${zip_code}


Give Random Gender
    ${random_gender}=  Generate Random Gender
Generate Random Gender
    ${genders}=  Create List  Male  Female  Other 
    ${random_gender}=  Evaluate  random.choice($genders)
    [Return]  ${random_gender}


Generate Random Password
    [Documentation]     Keywords for generating new Password
    ${random_string}    Generate Random String    8    [NUMBERS]
    ${password}    Set Variable    Password${random_string}@!
    [Return]    ${password}


Validating_Register_page_The_Ark
        [Documentation]                    Validating Register Page       
        ${Generate_Random_Registerusername}        Generate Random Registerusername
        ${Generate_Random_Registerlastusername}    Generate Random Registerlastusername
        ${Generate_Random_Email}                   Generate Random Email
        ${Generate_Random_Password}                Generate Random Password
        ${random_phone_number}                     Generate Random Phone Number
        ${random_zip_code}                         Generate Random ZIP Code
        ${random_gender}                           Generate Random Gender
        
        

        @{ValidatingRegisterPageText}=  Create List        Register        Tell us about yourself
        Page Should Contain Text        @{ValidatingRegisterPageText}
        Log        register page contains Expected Text
        Wait Until Page Contains               First Name             timeout=10
        Input Text    ${SignUp_First_Name}        ${Generate_Random_Registerusername}
        Wait Until Page Contains               Last Name            timeout=10
        Input Text    ${SignUp_Last_Name}         ${Generate_Random_Registerlastusername}
        Wait Until Page Contains               Email                timeout=10
        Input Text    ${SignUp_Email}             ${Generate_Random_Email}
        Wait Until Page Contains               New Password             timeout=10
        Input Text    ${SignUp_New_Password}       ${Generate_Random_Password}            
        Wait Until Page Contains               Phone number           timeout=10   
        Input Text    ${SignUp_Phone_Number}        ${random_phone_number}
        Wait Until Page Contains               ZipCode             timeout=10   
        Input Text    ${SignUp_Zipcode}             ${random_zip_code}
        Wait Until Page Contains               Country              timeout=10 
        Click Element        ${SignUp_Country} 
        Sleep   10
        @{ValidatingRegisterPageText}=  Create List        Afghanistan     Aruba                
        Page Should Contain Text        @{ValidatingRegisterPageText} 

        ${country_list}=    Create List    @{countries}
        ${random_index}=    Evaluate    random.randint(0, len(${country_list})-1)
        ${random_country}=    Get From List    ${country_list}    ${random_index}

        Log    Selected Country: ${random_country}
        ${Letters11}        Run Keyword And Return Status         Wait Until Element Is Visible                 ${random_country}           timeout=30
        Run Keyword If    "${Letters11}"=="True"                        Click Element         ${SignUp_Country_Selection1} 
        ${Letters12}        Run Keyword And Return Status         Wait Until Element Is Visible                ${SignUp_Country_Selection1}           timeout=30
        Run Keyword If    "${Letters12}"=="True"                      Input Text       ${SignUp_Country_Selection1}       ${random_country}
        ${Letters13}        Run Keyword And Return Status         Wait Until Element Is Visible                ${SignUp_Country_Selection1}           timeout=30
        Run Keyword If    "${Letters13}"=="True"                      Click Element       //android.widget.TextView[@text='${random_country}']
        Sleep   5
        @{ValidatingRegisterPageText}=  Create List        Date of Birth                 
        Page Should Contain Text        @{ValidatingRegisterPageText}
        Sleep    5                   
        Click Element      ${SignUp_Date_of_birth} 
        Sleep   10
        @{ValidatingRegisterPageText}=  Create List        CANCEL        OK                  
        Page Should Contain Text        @{ValidatingRegisterPageText} 
        Click Text        OK
        Swipe                               500  1500  500  500
        @{ValidatingRegisterPageText}=  Create List        Gender                          
        Page Should Contain Text        @{ValidatingRegisterPageText}
        @{ValidatingRegisterPageText}=  Create List         Male        Female                           
        Page Should Contain Text       @{ValidatingRegisterPageText} 
        Click Text        ${random_gender}
        @{ValidatingRegisterPageText}=  Create List            Register                       
        Page Should Contain Text        @{ValidatingRegisterPageText}
        Click Element        ${Registerbutton}
        Sleep   10
        @{ValidatingRegisterPageText}=  Create List         Register        Upload a profile picture  
        Page Should Contain Text        @{ValidatingRegisterPageText}
        Click Element  ${Skip_for_now} 
        Sleep    5
        ${Status1}    Run Keyword And Return Status         Page Should Contain Text        Global                                  
        Run Keyword If    "${Status1}"=="True"        Click Element                   ${contineubutton_global}
        Sleep    5
        ${Status2}    Run Keyword And Return Status        Page Should Contain Text        Private                               
        Run Keyword If    "${Status2}"=="True"        Click Element                   ${contineubutton_private}
        Sleep    5
        ${Status3}    Run Keyword And Return Status        Page Should Contain Text        My Organization                       
        Run Keyword If    "${Status3}"=="True"        Click Element                   ${contineubutton_myorg}
        Sleep    5
        ${Status4}    Run Keyword And Return Status       Page Should Contain Text        News                    
        Run Keyword If    "${Status4}"=="True"        Click Element                   ${contineubutton_news}
        Sleep    5
        ${Status5}    Run Keyword And Return Status         Page Should Contain Text       Pending Invites                                 
        Run Keyword If    "${Status5}"=="True"        Click Element                   ${AllsetattheArk}
        Sleep    5


Logout_The_Ark
        [Documentation]    Log out Ark Application 
        Sleep    10
        Click Element        ${ProfileArk_Image}            
         Sleep   5   
        ${Status}        Run Keyword And Return Status        Page Should Contain Text        Edit Profile                          
        Run Keyword If    '${Status}'=='True'      Click Element       ${My_Profile_LogOut}
        @{ValidatingRegisterPageText}=  Create List         Are you sure you want to log out?        Hope to see you soon.                            
        Page Should Contain Text       @{ValidatingRegisterPageText}
        Click Element        	${Pop_Up_Log_Out}
        Sleep   10


Validate_with_Validusername_Loginpage_The_Ark
        [Documentation]        Validating Login Page 
        @{ValidatingRegisterPageText}=  Create List               Email        Password                
        Page Should Contain Text        @{ValidatingRegisterPageText}
        ${Status1}        Run Keyword And Return Status            Page Should Contain Text                Email            timeout=10
        Run Keyword If    "${Status1}"=="True"        Input Text          ${Login_UserName}         ${Username}
        ${Status2}        Run Keyword And Return Status            Page Should Contain Text                Password         timeout=10
        Run Keyword If    "${Status2}"=="True"        Input Text          ${Login_Password}         ${Password}
        ${Status4}        Run Keyword And Return Status         Page Should Contain Text                   Password           timeout=20
        Click Element            ${Login_Password_eyeball}
        ${Status3}        Run Keyword And Return Status         Page Should Contain Text                   Log In           timeout=20
        Click Element            ${Login_button}


