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



Resource     ${CURDIR}${/}..//Resources//Variables.robot
Resource     ${CURDIR}${/}..//Library//Configuration.robot
# Resource     ${CURDIR}${/}..//Library//ArkMain.robot    



*** Keywords ***
App_Launch_Ark
        [Documentation]     Open The Ark application
        Log                 ${DEVICE_NAME}
        Open Application    ${APPIUM_SERVER}    platformName=${PLATFORM_NAME}   platformVersion=${PLATFORM_VERSION}
        ...                 udid=${DEVICE_ID}   deviceName=${DEVICE_NAME}   appPackage=${PACKAGE_NAME0}   appActivity=${ACTIVITY_NAME0}
        Set Appium Timeout  180


Swiping_Homescreen_Slide_The_Ark
        [Documentation]        Swipe left
        @{ValidatingRegisterPageText}=  Create List        Send a prayer,        Share the promise.         ${Description_1}                             
        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText} 
        FOR     ${result}   IN RANGE    0   5
            Swipe   1060     1640   80    1660
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==2
        END

|

Validating_About_Ark_The_Ark
        [Documentation]                    Validating Register screen
        
        @{Validatingmultipletextark}=  Create List        Log in      Register        About Ark         
        Wait For Mulitple Texts To Be Visible        @{Validatingmultipletextark}
        Sleep    2
        Click Element       ${About_Ark}




Validating_About_Ark_Mainpage_The_Ark
        [Documentation]                    Validating Aboutark screen
        @{Validatingmultipletextark}=  Create List          Content Acceptance Use Policy            Privacy Policy            Statement of Faith            Connect with us                         
        Wait For Mulitple Texts To Be Visible        @{Validatingmultipletextark}
        Sleep    2
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
        ${Generate_Random_Username}        Generate Random User
        ${Generate_Random_Email}           Generate Random Email
        ${Generate_Random_SubjectComment}  Generate Random SubjectComment
        ${Generate_Random_Comment}         Generate Random Comment


        @{ValidatingRegisterPageText}=  Create List            Get In Touch With US          Let us know how to get back to you         First Name         Your E-mail         Subject        Your Comments/Question                                    
        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}

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
        @{Validatingmultipletextark}=  Create List        Log in      Register        About Ark         
        Wait For Mulitple Texts To Be Visible        @{Validatingmultipletextark}
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

Generate Random Country
       ${selected_option.text}=  Generate Random Country
       ${country_dropdown}        Get Webelement         ${My_Profile_EditProfile_Address_Country}
       ${options}    Get WebElements    ${My_Profile_EditProfile_Address_Country}
       ${random_index}    Evaluate    random.randint(0, len($options)-1)
       ${selected_option}    Set Variable    ${options[${random_index}]}
       Log    Selected Country: ${selected_option.text}
       Get Index From List    ${country_dropdown}    ${random_index}

Generate Random Date of Birth and Perform Vertical Swipe
    ${random_dob}=   Generate Random Date of Birth
    Log    Random Date of Birth: ${random_dob}
    Input Text    ${SignUp_Date_of_birth_Select}    ${random_dob}
    Sleep   2s    # Adjust as needed to wait for the changes to reflect on the page
    Perform Vertical Swipe   500,1200   600,1000

Generate Random Date of Birth
    ${day}=    Evaluate    random.randint(1, 28)
    ${months}=  Create List        Jan    Feb    Mar    Apr   May    Jun  Jul   Aug  Sep   Oct   Nov  Dec
    ${month}=   Evaluate    random.choice(${months})
    ${year}=   Evaluate    random.randint(1996, 2009)
    ${dob}=    Set Variable    ${month}/${day}/${year}
    [Return]    ${dob}

    FOR     ${result}   IN RANGE    0   5
            Swipe   1060     1640   80    1660
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==2
        END

Perform Vertical Swipe
    [Arguments]    ${start_coordinates}    ${end_coordinates}
    ${start_x}=    Set Variable    ${start_coordinates[0]}
    ${start_y}=    Set Variable    ${start_coordinates[1]}
    ${end_x}=      Set Variable    ${end_coordinates[0]}
    ${end_y}=      Set Variable    ${end_coordinates[1]}
    Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}    duration=1000  # Adjust duration as needed

Give Random Gender
    ${random_gender}=  Generate Random Gender

Generate Random Gender
    ${genders}=  Create List  Male  Female  Other  Prefer 
    ${random_gender}=  Evaluate  random.choice($genders)
    [Return]  ${random_gender}
Validating_Register_page_The_Ark
        [Documentation]                    Validating Register Page
        # [Arguments]        ${Firstname}        ${Lastname}        ${Email}        ${Password}        ${Phonenumber}        ${Zipcode}        ${Gender}  
        
        ${Generate_Random_Registerusername}        Generate Random Registerusername
        ${Generate_Random_Registerlastusername}    Generate Random Registerlastusername
        ${Generate_Random_Email}                   Generate Random Email
        ${Generate_Random_Password}                Generate Random Password
        ${random_phone_number}                     Generate Random Phone Number
        ${random_zip_code}                         Generate Random ZIP Code
        ${random_country}                          Generate Random Country
        ${random_dob}                              Generate Random Date of Birth
        ${random_gender}                           Generate Random Gender
        ${selected_option.text}                    Generate Random Country
        @{ValidatingRegisterPageText}=  Create List        Register        Tell us about yourself
        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
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
        @{ValidatingRegisterPageText}=  Create List        search-input-dropdown                  
        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText} 
        Input Text    ${SignUp_Country_Selection1}         India
        Click Element        ${SignUp_Country_Selection2}
        Wait Until Page Contains               Date of Birth            timeout=10 
        Click Element            ${SignUp_Date_of_birth}
        # Click Element        ${SignUp_Date_of_birth_Select}
        @{ValidatingRegisterPageText}=  Create List        CANCEL        OK                  
        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText} 
        Click Text        OK
        Swipe                               500  1500  500  500
        Wait Until Page Contains               Gender          timeout=10  
        @{ValidatingRegisterPageText}=  Create List         Male        Female        Other                        
        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText} 
        Click Text        ${random_gender}
        @{ValidatingRegisterPageText}=  Create List         txt-register-conditions        Register                       
        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
        Click Element        ${Registerbutton}
        @{ValidatingRegisterPageText}=  Create List         Register        Upload a profile picture        Continue        Skip for now
        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
        Click Text      Skip for now 
        ${Status1}    Run Keyword And Return Status         Wait Until Page Contains        Global                                   timeout=15
        Run Keyword If    "${Status1}"=="True"        Click Element                   ${contineubutton}
        ${Status2}    Run Keyword And Return Status        Wait Until Page Contains        Private                                timeout=15
        Run Keyword If    "${Status2}"=="True"        Click Element                   ${contineubutton}
        ${Status3}    Run Keyword And Return Status        Wait Until Page Contains        My Organization                       timeout=15
        Run Keyword If    "${Status3}"=="True"        Click Element                   ${contineubutton}
        ${Status4}    Run Keyword And Return Status       Wait Until Page Contains        News                    timeout=15
        Run Keyword If    "${Status4}"=="True"        Click Element                   ${contineubutton}
        ${Status5}    Run Keyword And Return Status         Wait Until Page Contains        Pending Invites                                   timeout=15
        Run Keyword If    "${Status5}"=="True"        Click Element                   ${AllsetattheArk} 



Logout_The_Ark
        [Documentation]    Log out Ark Application 
        Sleep    10
        Click Element        ${My_Profile_Image}            
        @{ValidatingRegisterPageText}=  Create List             Edit Profile        My Posts        My Prayers        Saved items        Following        Settings        Log Out
        ${Status}        Run Keyword And Return Status        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}                    
        Run Keyword If    '${Status}'=='True'      Click Element       ${My_Profile_LogOut}
        @{ValidatingRegisterPageText}=  Create List         Are you sure you want to log out?        Hope to see you soon.        Cancel        Logout                              
        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
        Click Element        	${My_Profile_LogOut_Continue}
        Sleep   10     
       


Validate_Login_Page_And_Register_For_New_User_The_Ark
        [Documentation]        Validating Login Page and Register
        @{ValidatingRegisterPageText}=  Create List         Log In        Email        Password        Not registered? Signup here        Forgot Password?        About Ark
        Click Element        	${Login_NotRegistered}



Validating_Login_Mainpage_The_Ark
        [Documentation]                    Validating login screen
        [Arguments]        ${Username}        ${Password}
        @{Validatingmultipletextark}=  Create List        Log in      Register        About Ark         
        Wait For Mulitple Texts To Be Visible        @{Validatingmultipletextark}
        Sleep    2
        Click Element            ${Login_Button_Click}
        ${Status1}        Run Keyword And Return Status            Wait Until Page Contains               Email            timeout=10
        Run Keyword If    "${Status1}"=="True"        Input Text          ${Login_UserName}         ${Username}
        ${Status2}        Run Keyword And Return Status            Wait Until Page Contains               Password         timeout=10
        Run Keyword If    "${Status2}"=="True"        Input Text          ${Login_Password}         ${Password}
        ${Status4}        Run Keyword And Return Status         wait Until Page Contains                  Password           timeout=20
        Click Element            ${Login_Password_eyeball}
        ${Status3}        Run Keyword And Return Status         wait Until Page Contains                  Log In           timeout=20
        Click Element            ${Login_button}

Validating_ProfileImage_The_Ark
        [Documentation]                    Validating Profile Image screen
        @{Validatingmultipletextark}=  Create List        Like            Comment        Share        Global      Private        My Org        News        More        ${Main_page_Searchbar}        ${Main_page_Notificationbar}        ${Main_page_Profile_Icon}                   
        Sleep    2
        Click Element            ${Main_page_Profile_Icon}
EditProfile_Profile_Picture
        [Documentation]                     Edit Profile Images on profile         
        @{ValidatingRegisterPageText}=  Create List             Edit Profile        My Posts        My Prayers        Saved items        Following        Settings        Log Out
        ${Status}        Run Keyword And Return Status        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
        Run Keyword If    '${Status}'=='True'      Click Element       ${My_Profile_EditProfile}

        Wait Until Page Contains               Profile Picture             timeout=10
        Click Element            ${Edit}
        Wait Until Page Contains              Select profile picture              timeout=10
        Click Element            ${SelectProfile}
        
Profile_Attachment_The_Ark
        [Documentation]                    Validating Profile attachment
        wait Until Page Contains                  ${SelectProfile_word}           timeout=20
        Click Element            ${Image_Allow}
        wait Until Page Contains                    Albums           timeout=20
        Click Element            ${Image_Album}
        wait Until Page Contains                    Downloads           timeout=20
        Click Element            ${Album_Downloads}
        wait Until Page Contains                    Downloads           timeout=20
        Click Element            ${Downloads_Picture}
        Sleep    5
        wait Until Page Contains                    Edit Photo           timeout=30
        Click Element           ${Downloads_Profilepic}    


About_The_Ark  
        [Documentation]                    Validating About the ark
        Sleep  5      
        @{ValidatingRegisterPageText}=  Create List            Personal Profile      Profile Picture        About        Contact        Relationship        
        ${Status}        Run Keyword And Return Status        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}  
        Run Keyword If    '${Status}'=='True'      Click Element       ${About_Edit}
        wait Until Page Contains                    First Name           timeout=30
        Clear Text          ${Frst}
        Input Text           ${Frst}          ${FirstName}
        wait Until Page Contains                    Middle Name           timeout=30
        Clear Text           ${Middle} 
        wait Until Page Contains                    Middle Name           timeout=30
        Input Text           ${Middle}          ${MiddleName}
        wait Until Page Contains                    Last Name           timeout=30
        Clear Text           ${Last} 
        wait Until Page Contains                    Last Name           timeout=30
        Input Text           ${Last}          ${LastName}
        # wait Until Page Contains                    Date-of-Birth           timeout=30
        # Get Text           ${Dob} 
        # wait Until Page Contains                    Gender           timeout=30
        # Get Text           ${Gender}  
        wait Until Page Contains                    Save           timeout=30
        Click Element           ${Save}      
        Sleep    20


Contact_The_Ark
        [Documentation]                    Ensure the Contact and country
        ${random_phone_number}                     Generate Random Phone Number
        ${selected_option.text}                    Generate Random Country
        Sleep  5      
        @{ValidatingRegisterPageText}=  Create List            Contact               
        ${Status1}        Run Keyword And Return Status        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText} 
        Run Keyword If    '${Status1}'=='True'      Click Element       ${Contact_Edit}
        wait Until Page Contains                    Contact           timeout=30
        Clear Text           ${Number} 
        wait Until Page Contains                    Contact           timeout=30
        Input Text           ${Number}          ${random_phone_number}
         wait Until Page Contains                    Email           timeout=30
        Get Text           ${Email}
        wait Until Page Contains                    Save           timeout=30
        Click Element           ${Contact_Save}
        Sleep    5
        Swipe                               1018  2133  1014  1654
        wait Until Page Contains                    Address           timeout=30
        Click Element           ${Country_Edit}
        wait Until Page Contains                    Country           timeout=30
        Input Text           ${Address_Country}       ${selected_option.text}   
        
        




Validating_MainFeedPage_The_Ark
        [Documentation]                    Validating Main Feed Page screen
         @{Validatingmultipletextark}=  Create List        Like            Comment        Share        Global      Private        My Org        News        More        ${Main_page_Searchbar}        ${Main_page_Notificationbar}        ${Main_page_Profile_Icon}         
        Wait For Mulitple Texts To Be Visible        @{Validatingmultipletextark}
        Sleep    2
        Click Element            ${Main_page_Private_Icon}
        Sleep    5
        Click Element            ${Main_page_MyOrg_Icon}
        Sleep    5
        Click Element            ${Main_page_News_Icon}
        Sleep    5
        # Click Element            ${Main_page_More_Option}
        # Sleep    5
        Click Element            ${Main_page_Floating_Button}


Validating_Main_More_Option_The_Ark
        [Documentation]                    Validating Main Option Page screen
        @{Validatingmultipletextark}=  Create List        Prayer Diary            My Groups        Pending Invites        Ark Enterprise      Manage Group Requests        About Ark        
        Sleep    2
        ${Status1}    Run Keyword And Return Status         Wait Until Page Contains        Prayer Diary                                   timeout=10
        Run Keyword If    "${Status1}"=="True"        Click Element            ${More_Option_PrayerDiary}
        Sleep    5
        Click Element            ${More_Option_PrayerDiary_Navigator}
        Sleep    5
        ${Status2}    Run Keyword And Return Status         Wait Until Page Contains        My Groups                                   timeout=10
        Run Keyword If    "${Status2}"=="True"        Click Element            ${More_Option_Mygroups}
        Sleep    5
        Click Element            ${More_Option_Mygroup_Navigator}
        Sleep    5
        ${Status3}    Run Keyword And Return Status         Wait Until Page Contains        Pending Invites                                   timeout=10
        Run Keyword If    "${Status3}"=="True"        Click Element            ${More_Option_PendingInvites}
        Sleep    5
        Click Element            ${More_Option_PendingInvites_Navigator}
        Sleep    5
        ${Status4}    Run Keyword And Return Status         Wait Until Page Contains        Manage Group Requests                                   timeout=10
        Run Keyword If    "${Status4}"=="True"        Click Element            ${More_Option_GroupRequest}
        Sleep    5
        Click Element            ${More_Option_GroupRequest_Navigator}
        Sleep    5
        ${Status5}    Run Keyword And Return Status         Wait Until Page Contains        Manage Group Requests                                   timeout=10
        Run Keyword If    "${Status5}"=="True"        Click Element            ${More_Option_AboutArk}
        Sleep    5
        Click Element            ${More_Option_AboutArk_Navigator}


Validating_My_Profile_The_Ark
        [Documentation]                    Validating More Option screen
        [Arguments]                        ${CurrentPass}                ${Newpass}                ${Repass}
        Sleep    10
        Click Element        ${My_Profile_Image}            
        @{ValidatingRegisterPageText}=  Create List             Edit Profile        My Posts        My Prayers        Saved items        Following        Settings        Log Out
        ${Status}        Run Keyword And Return Status        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
        Run Keyword If    '${Status}'=='True'      Click Element       ${My_Profile_MyPosts}
        Sleep    2
        Click Element            ${My_Profile_MyPosts_BackNavigation}
        Sleep    5
        Click Element            ${My_Profile_MyPrayers}
        Sleep    5
        Click Element            ${My_Profile_MyPrayers_BackNavigation}
        Sleep    5
        Click Element            ${My_Profile_SavedItems}
        Sleep    5
        Click Element            ${My_Profile_SavedItems_BackNavigation}
        Sleep    5
        Click Element            ${My_Profile_Following}
        Sleep    5
        Click Element            ${My_Profile_Following_BackNavigation}
        Sleep    5
        Click Element            ${My_Profile_Settings}
        Sleep    5
        Click Element            ${My_Profile_Settings_AccountSettings}
        Sleep    5
        Click Element            ${My_Profile_Settings_ChangePassword}
        Sleep    5
        @{ValidatingRegisterPageText}=  Create List             Change Password        Current Password        New Password        Re-enter Password        Save
        ${Status}        Run Keyword And Return Status        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
        Run Keyword If    '${Status}'=='True'      Input Text       ${My_Profile_Settings_CurrentPassword}                        ${CurrentPass}
        Sleep    5
        Click Element            ${My_Profile_EyeBall_CurrentPassword}
        Sleep    5
        Input Text               ${My_Profile_Settings_NewPassword}                        ${Newpass}
        Sleep    5
        Click Element            ${My_Profile_EyeBall_NewPassword}
        Sleep    5
        Input Text               ${My_Profile_Settings_RePassword}                         ${Repass}
        Sleep    5
        Click Element            ${My_Profile_EyeBall_RePassword}
        Sleep    5
        Click Element            ${My_Profile_Save}
        Sleep    5
        Click Element            ${My_Profile_ChangeAcccountSetting}
        Sleep    5
        Click Element            ${My_Profile_Settings_BackNavigation}
        Sleep    5
        @{ValidatingRegisterPageText}=  Create List             Edit Profile        My Posts        My Prayers        Saved items        Following        Settings        Log Out
        ${Status}        Run Keyword And Return Status        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}                    
        Run Keyword If    '${Status}'=='True'      Click Element       ${My_Profile_LogOut}
        @{ValidatingRegisterPageText}=  Create List         Are you sure you want to log out?        Hope to see you soon.        Cancel        Logout                              
        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
        Click Element        	${My_Profile_LogOut_Continue}



Validating_Edit_Profile_The_Ark
        [Documentation]                    Validating Edit Profile screen
        Sleep    10
        Click Element        ${My_Profile_Image}            
        @{ValidatingRegisterPageText}=  Create List             Edit Profile        My Posts        My Prayers        Saved items        Following        Settings        Log Out
        ${Status}        Run Keyword And Return Status        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
        Run Keyword If    '${Status}'=='True'      Click Element       ${My_Profile_MyPosts}


Validating_More_Option_The_Ark
        [Documentation]                    Validating More Option screen
         @{Validatingmultipletextark}=  Create List        Prayer Diary            My Groups        Pending Invites        Ark Enterprise      Manage Group Requests        About Ark               
        Wait For Mulitple Texts To Be Visible        @{Validatingmultipletextark}
        Sleep    5




Wait For Mulitple Texts To Be Visible
        [Arguments]     @{TextsToBeChecked}
        FOR    ${Text}    IN    @{TextsToBeChecked}
            Wait Until Page Contains    ${Text}      timeout=60
        END



Registration_Invalid_Mail_Verification_The_Ark
        [Documentation]        Validating Invalid Email error response 
        [Arguments]        ${Expectedvalue}
        ${Status}    Run Keyword And Return Status            Wait Until Page Contains Element            ${Register_email_correction}        timeout=30
        ${Valuetxt}           Get Text            ${Register_email_correction}
        Run Keyword If    "${Status}"=="True"        Should Be Equal              ${Valuetxt}        ${Expectedvalue} 
        Log    Text Matching: You seem to have an account already! Kindly try logging in again else provide alternate email
        Sleep    2
        Click Element       ${Register_Back_button}


Registration_Invalid_phonenumber_Verification_The_Ark 
        [Documentation]        Validating Invalid Phonenumber error response 
        [Arguments]        ${Expectedvalue}
        ${Status}    Run Keyword And Return Status            Wait Until Page Contains Element            ${Phone_number_error_message}        timeout=30
        ${Valuetxt}           Get Text            ${Phone_number_error_message}
        Run Keyword If    "${Status}"=="True"        Should Be Equal              ${Valuetxt}        ${Expectedvalue} 
        Log    Text Matching: You seem to have an account already! Kindly try logging in again else provide alternate Number
        Sleep    2
        Click Element       ${Register_Back_button}



Loginpage_with_Invalid_Password
        [Documentation]        Validating Invalid password credential 
        [Arguments]        ${Expectedvalue}
        ${Status}    Run Keyword And Return Status            Wait Until Page Contains Element            ${Invalid_pas_id}        timeout=30
        ${Valuetxt}           Get Text            ${Invalid_pas_id}
        Run Keyword If    "${Status}"=="True"        Should Be Equal              ${Valuetxt}        ${Expectedvalue} 
        Log    Text Matching: Invalid email or password
        Sleep    2
        Click Element       ${Invalid_ok_button}
        ${Status}        Run Keyword And Return Status            Wait Until Page Contains               Password            timeout=10
        Run Keyword If    "${Status}"=="True"        Clear Text          ${Login_UserName} 
        ${Status}        Run Keyword And Return Status            Wait Until Page Contains               Password            timeout=10
        Run Keyword If    "${Status}"=="True"        Clear Text          ${Login_Password}         


Validate_with_Validusername_Loginpage_The_Ark
        [Documentation]        Validating Login Page
        [Arguments]        ${Username}        ${Password} 
        @{ValidatingRegisterPageText}=  Create List         Log In        Email        Password        Not registered? Signup here        Forgot Password?        About Ark                            
        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
        ${Status1}        Run Keyword And Return Status            Wait Until Page Contains               Email            timeout=10
        Run Keyword If    "${Status1}"=="True"        Input Text          ${Login_UserName}         ${Username}
        ${Status2}        Run Keyword And Return Status            Wait Until Page Contains               Password         timeout=10
        Run Keyword If    "${Status2}"=="True"        Input Text          ${Login_Password}         ${Password}
        ${Status4}        Run Keyword And Return Status         wait Until Page Contains                  Password           timeout=20
        Click Element            ${Login_Password_eyeball}
        ${Status3}        Run Keyword And Return Status         wait Until Page Contains                  Log In           timeout=20
        Click Element            ${Login_button}

Validate_with_PendingInvites_The_Ark
        [Documentation]        Validating Pending Invite Page
        @{ValidatingRegisterPageText}=  Create List         Pending Invites        Role        Reject        Accept                            
        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
        ${Status}        Run Keyword And Return Status         wait Until Page Contains                  Accept           timeout=20
        Run Keyword If    "${Status}"=="True"            Click Element            ${Pending_Invites}
        Sleep    2
        ${Status3}        Run Keyword And Return Status         wait Until Page Contains                  No Invites found           timeout=20
        Run Keyword If    "${Status}"=="True"            Click Element            ${More_Option_PendingInvites_Navigator}


Validate_with_Notification_The_Ark
        [Documentation]        Validating Notification Page
        Sleep        3
        Click Element            ${Notification_bar}
        @{ValidatingRegisterPageText}=  Create List         Notification        Mark all as read        Thats all for now                            
        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
        ${Status}        Run Keyword And Return Status         wait Until Page Contains               Myt           timeout=20
        Run Keyword If    "${Status}"=="True"        Click Element            ${Notificaion}
        ${Status}        Run Keyword And Return Status         wait Until Page Contains               No Invites found           timeout=20
        Run Keyword If    "${Status}"=="True"        Click Element            ${More_Option_PendingInvites_Navigator}
        Sleep      2
        Click Element            ${Notificaion_Navigator}

Generate Random User
    [Documentation]     Keywords for generating new users
    ${random_string}    Generate Random String    8    [NUMBERS]
    ${username}    Set Variable    User${random_string}@gmail.com
    [Return]    ${username}
       

Generate Random Password
    [Documentation]     Keywords for generating new Password
    ${random_string}    Generate Random String    8    [NUMBERS]
    ${password}    Set Variable    Password${random_string}@!
    [Return]    ${password}




Validate_with_Validusername_Loginpage_The_Ark2
    [Documentation]    Validating More Option screen
    ${Generate_Random_User}        Generate Random User
    ${Generate_Random_Password}    Generate Random Password
    @{ValidatingRegisterPageText}=  Create List    Log In    Email    Password    Not registered? Signup here    Forgot Password?    About Ark
    ${Status}    Run Keyword And Return Status    Wait Until Page Contains Element    ${ValidatingRegisterPageText}

    Log    New user generated: ${Generate_Random_User}
    Log    New password generated: ${Generate_Random_User}

    ${Status}    Run Keyword And Return Status    Wait Until Page Contains Element    ${Login_UserName}    timeout=30
    Run Keyword If    "${Status}"=="True"    Input Text    ${Login_UserName}    ${Generate_Random_User}

    ${PasswordStatus}    Run Keyword And Return Status    Wait Until Page Contains Element    ${Login_Password}    timeout=10
    Run Keyword If    "${PasswordStatus}"=="True"    Input Text    ${Login_Password}    ${Generate_Random_User}

    ${Status4}        Run Keyword And Return Status         wait Until Page Contains                  Password           timeout=20
    Click Element            ${Login_Password_eyeball}
    ${Status3}        Run Keyword And Return Status         wait Until Page Contains                  Log In           timeout=20
    Click Element            ${Login_button}


