# *** Settings ***
# Documentation    Suite description
# Library  Collections
# Library  AppiumLibrary
# Library  String
# Library  DateTime
# Library  OperatingSystem
# Library  Process
# Library   XML
# Library   BuiltIn





# Resource     ${CURDIR}${/}..//Resources//Variables.robot
# Resource     ${CURDIR}${/}..//Library//Configuration.robot
# # Resource     ${CURDIR}${/}..//Library//ArkMain.robot    



# *** Keywords ***
# App_Launch_Ark
#         [Documentation]     Open The Ark application
#         Log                 ${DEVICE_NAME}
#         Open Application    ${APPIUM_SERVER}    platformName=${PLATFORM_NAME}   platformVersion=${PLATFORM_VERSION}
#         ...                 udid=${DEVICE_ID}   deviceName=${DEVICE_NAME}   appPackage=${PACKAGE_NAME0}   appActivity=${ACTIVITY_NAME0}
#         Set Appium Timeout  180


# Swiping_Homescreen_Slide_The_Ark
#         [Documentation]        Swipe left
#         @{ValidatingRegisterPageText}=  Create List        Send a prayer,        Share the promise.         ${Description_1}                             
#         Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText} 
#         FOR     ${result}   IN RANGE    0   5
#             Swipe   1060     1640   80    1660
#             ${result}   Set Variable    ${result}+1
#             Exit For Loop If    ${result}==2
#         END

# |

# Validating_About_Ark_The_Ark
#         [Documentation]                    Validating Register screen
        
#         @{Validatingmultipletextark}=  Create List        Log in      Register        About Ark         
#         Wait For Mulitple Texts To Be Visible        @{Validatingmultipletextark}
#         Sleep    2
#         Click Element       ${About_Ark}




# Validating_About_Ark_Mainpage_The_Ark
#         [Documentation]                    Validating Aboutark screen
#         @{Validatingmultipletextark}=  Create List          Content Acceptance Use Policy            Privacy Policy            Statement of Faith            Connect with us                         
#         Wait For Mulitple Texts To Be Visible        @{Validatingmultipletextark}
#         Sleep    2
#         Click Element       ${About_Ark_Connectwithus}

# Generate_Random_Username
#     [Documentation]     Keywords for generating new Username
#     ${random_string}    Generate Random String    8  [LETTERS]/
#     ${firstname}    Set Variable    ${random_string}
#     [Return]    ${firstname}  

# Generate_Random_Email
#     [Documentation]     Keywords for generating new Email
#     ${random_string}    Generate Random String    8    [NUMBERS]
#     ${password}    Set Variable    email${random_string}@gmail.com
#     [Return]    ${password}         

# Give_Random_SubjectComment
#     ${random_comment}=  Generate Random SubjectComment  
# Generate_Random_SubjectComment
#     ${comment_options}=  Create List  About Ark        Feedback         Have Information    App wil work      Good Process
#     ${random_comment}=  Evaluate  random.choice($comment_options)
#     [Return]  ${random_comment}
# Give Random Comment
#     ${random_comment}=  Generate Random Comment   
# Generate_Random_Comment
#     ${comment_options}=  Create List  Great job!  Well done.  Keep it up.  Needs improvement.  Good effort.
#     ${random_comment}=  Evaluate  random.choice($comment_options)
#     [Return]  ${random_comment}     
    
# Validate_with_Support_with_Us_The_Ark
#         [Documentation]        Support with Us
#         ${Generate_Random_Username}        Generate Random User
#         ${Generate_Random_Email}           Generate Random Email
#         ${Generate_Random_SubjectComment}  Generate Random SubjectComment
#         ${Generate_Random_Comment}         Generate Random Comment


#         @{ValidatingRegisterPageText}=  Create List            Get In Touch With US          Let us know how to get back to you         First Name         Your E-mail         Subject        Your Comments/Question                                    
#         Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}

#         ${Status1}        Run Keyword And Return Status            Wait Until Page Contains               First Name            timeout=10
#         Run Keyword If    "${Status1}"=="True"        Input Text          ${About_Ark_Firstname}            ${Generate_Random_Username}
#         Sleep    2
#         ${Status2}        Run Keyword And Return Status            Wait Until Page Contains                Your E-mail        timeout=10
#         Run Keyword If    "${Status2}"=="True"        Input Text          ${About_Ark_Email}                 ${Generate_Random_Email}
#         Sleep    2
#         ${Status3}        Run Keyword And Return Status            Wait Until Page Contains               Subject            timeout=10
#         Run Keyword If    "${Status3}"=="True"        Input Text          ${About_Ark_Subject}           ${Generate_Random_SubjectComment}
#         Sleep    2
#         ${Status4}        Run Keyword And Return Status            Wait Until Page Contains                Your E-mail        timeout=10
#         Run Keyword If    "${Status4}"=="True"        Input Text          ${About_Ark_Comments}          ${Generate_Random_Comment}
#         Sleep    2
#         ${Status5}        Run Keyword And Return Status         wait Until Page Contains                  Submit           timeout=20
#         Click Element            ${About_Ark_Submit}
#         Sleep    5
#         Click Element            ${About_Ark_Navigation}
        
        
         

# Validating_Register_Mainpage_The_Ark
#         [Documentation]                    Validating Register screen
#         @{Validatingmultipletextark}=  Create List        Log in      Register        About Ark         
#         Wait For Mulitple Texts To Be Visible        @{Validatingmultipletextark}
#         Sleep    5
#         Wait Until Element Is Visible         ${Register}                       timeout=30
#         Click Element                 ${Register}      
        
# Give_Random_Registerusername
#     ${random_comment}=  Generate Random Registerusername  
# Generate_Random_Registerusername
#     ${comment_options}=  Create List  Username1        Username2         Username3     Username4      Username4
#     ${random_comment}=  Evaluate  random.choice($comment_options)
#     [Return]  ${random_comment}


# Give_Random_Registerlastusername
#     ${random_comment}=  Generate Random Registerlastusername  
# Generate_Random_Registerlastusername
#     ${comment_options}=  Create List  Ark1        Ark2         Ark3     Ark4      Ark5
#     ${random_comment}=  Evaluate  random.choice($comment_options)
#     [Return]  ${random_comment}

# Give Random Phone Number
#     ${random_phone_number}=  Generate Random Phone Number

# Generate Random Phone Number
#     ${area_code}=  Evaluate  random.randint(999, 99999)
#     ${prefix}=  Evaluate  random.randint(5000, 9999)
#     ${line_number}=  Evaluate  random.randint(15000, 90000)
#     ${random_phone_number}=  Set Variable   91${area_code}${prefix}${line_number}
#     [Return]  ${random_phone_number}

# Give Random ZIP Code
#     ${random_zip_code}=  Generate Random ZIP Code

# Generate Random ZIP Code
#     ${zip_code}=  Evaluate  f"{random.randint(10000, 99999):05d}"
#     [Return]  ${zip_code}




# Give Random Gender
#     ${random_gender}=  Generate Random Gender

# Generate Random Gender
#     ${genders}=  Create List  Male  Female  Other  Prefer 
#     ${random_gender}=  Evaluate  random.choice($genders)
#     [Return]  ${random_gender}


# Randomly_Select_Date
#     ${current_year}=    Get Current Date    result_format=%Y
#     ${current_year_as_integer}=    Convert To Integer    ${current_year}
#     ${start_date}=    Set Variable    ${current_year_as_integer - 30}-01-01
#     ${end_date}=    Set Variable    ${current_year_as_integer - 18}-12-31
#     ${random_date}=    Generate Random Date    ${start_date}    ${end_date}
#     Log    Random Date: ${random_date}


# Generate_Random_Date
#     [Arguments]    ${start_date}    ${end_date}
#     ${start_timestamp}=    Convert Date To Timestamp    ${start_date}
#     ${end_timestamp}=    Convert Date To Timestamp    ${end_date}
#     ${random_timestamp}=    Evaluate    random.uniform(${start_timestamp}, ${end_timestamp})
#     ${random_date}=    Convert_Timestamp_To_Date    ${random_timestamp}
#     Set Test Variable    ${random_date}



# Convert_Date_To_Timestamp
#     [Arguments]    ${date}
#     ${timestamp}=    Convert Date    ${date}    result_format=%s
#     [Return]    ${timestamp}

# Convert_Timestamp_To_Date
#     [Arguments]    ${timestamp}
#     ${date}=    Convert_Timestamp_To_Date    ${timestamp}




# Validating_Register_page_The_Ark
#         [Documentation]                    Validating Register Page       
#         ${Generate_Random_Registerusername}        Generate Random Registerusername
#         ${Generate_Random_Registerlastusername}    Generate Random Registerlastusername
#         ${Generate_Random_Email}                   Generate Random Email
#         ${Generate_Random_Password}                Generate Random Password
#         ${random_phone_number}                     Generate Random Phone Number
#         ${random_zip_code}                         Generate Random ZIP Code
#         ${random_gender}                           Generate Random Gender
        
        

#         @{ValidatingRegisterPageText}=  Create List        Register        Tell us about yourself
#         Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
#         Log        register page contains Expected Text
#         Wait Until Page Contains               First Name             timeout=10
#         Input Text    ${SignUp_First_Name}        ${Generate_Random_Registerusername}
#         Wait Until Page Contains               Last Name            timeout=10
#         Input Text    ${SignUp_Last_Name}         ${Generate_Random_Registerlastusername}
#         Wait Until Page Contains               Email                timeout=10
#         Input Text    ${SignUp_Email}             ${Generate_Random_Email}
#         Wait Until Page Contains               New Password             timeout=10
#         Input Text    ${SignUp_New_Password}       ${Generate_Random_Password}            
#         Wait Until Page Contains               Phone number           timeout=10   
#         Input Text    ${SignUp_Phone_Number}        ${random_phone_number}
#         Wait Until Page Contains               ZipCode             timeout=10   
#         Input Text    ${SignUp_Zipcode}             ${random_zip_code}
#         Wait Until Page Contains               Country              timeout=10 
#         Click Element        ${SignUp_Country} 

#         @{ValidatingRegisterPageText}=  Create List        search-input-dropdown                  
#         Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText} 

#         ${country_list}=    Create List    @{countries}
#         ${random_index}=    Evaluate    random.randint(0, len(${country_list})-1)
#         ${random_country}=    Get From List    ${country_list}    ${random_index}

#         Log    Selected Country: ${random_country}
#         ${Letters11}        Run Keyword And Return Status         Wait Until Element Is Visible                 ${random_country}           timeout=30
#         Run Keyword If    "${Letters11}"=="True"                        Click Element         ${SignUp_Country_Selection1} 
#         ${Letters12}        Run Keyword And Return Status         Wait Until Element Is Visible                ${SignUp_Country_Selection1}           timeout=30
#         Run Keyword If    "${Letters12}"=="True"                      Input Text       ${SignUp_Country_Selection1}       ${random_country}
#         ${Letters13}        Run Keyword And Return Status         Wait Until Element Is Visible                ${SignUp_Country_Selection1}           timeout=30
#         Run Keyword If    "${Letters13}"=="True"                      Click Element       //android.widget.TextView[@text='${random_country}']
#         Wait Until Page Contains               Date of Birth            timeout=10 
#         Click Element            ${SignUp_Date_of_birth}
#         Sleep   10
#         Click Element        ${SignUp_Date_of_birth_Select}
#         @{ValidatingRegisterPageText}=  Create List        CANCEL        OK                  
#         Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText} 
#         Click Text        OK
#         Swipe                               500  1500  500  500
#         Wait Until Page Contains               Gender          timeout=10  
#         @{ValidatingRegisterPageText}=  Create List         Male        Female        Other                        
#         Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText} 
#         Click Text        ${random_gender}
#         @{ValidatingRegisterPageText}=  Create List         txt-register-conditions        Register                       
#         Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
#         Click Element        ${Registerbutton}
#         @{ValidatingRegisterPageText}=  Create List         Register        Upload a profile picture        Continue        Skip for now
#         Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
#         Click Text      Skip for now 
#         ${Status1}    Run Keyword And Return Status         Wait Until Page Contains        Global                                   timeout=15
#         Run Keyword If    "${Status1}"=="True"        Click Element                   ${contineubutton}
#         ${Status2}    Run Keyword And Return Status        Wait Until Page Contains        Private                                timeout=15
#         Run Keyword If    "${Status2}"=="True"        Click Element                   ${contineubutton}
#         ${Status3}    Run Keyword And Return Status        Wait Until Page Contains        My Organization                       timeout=15
#         Run Keyword If    "${Status3}"=="True"        Click Element                   ${contineubutton}
#         ${Status4}    Run Keyword And Return Status       Wait Until Page Contains        News                    timeout=15
#         Run Keyword If    "${Status4}"=="True"        Click Element                   ${contineubutton}
#         ${Status5}    Run Keyword And Return Status         Wait Until Page Contains        Pending Invites                                   timeout=15
#         Run Keyword If    "${Status5}"=="True"        Click Element                   ${AllsetattheArk} 

     



# Logout_The_Ark
#         [Documentation]    Log out Ark Application 
#         Sleep    10
#         Click Element        ${My_Profile_Image}            
#         @{ValidatingRegisterPageText}=  Create List             Edit Profile        My Posts        My Prayers        Saved items        Following        Settings        Log Out
#         ${Status}        Run Keyword And Return Status        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}                    
#         Run Keyword If    '${Status}'=='True'      Click Element       ${My_Profile_LogOut}
#         @{ValidatingRegisterPageText}=  Create List         Are you sure you want to log out?        Hope to see you soon.        Cancel        Logout                              
#         Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
#         Click Element        	${Pop_Up_Log_Out}
#         Sleep   10     
       


# Validate_Login_Page_And_Register_For_New_User_The_Ark
#         [Documentation]        Validating Login Page and Register
#         @{ValidatingRegisterPageText}=  Create List         Log In        Email        Password        Not registered? Signup here        Forgot Password?        About Ark
#         Click Element        	${Login_NotRegistered}



# Validating_Login_Mainpage_The_Ark
#         [Documentation]                    Validating login screen
#         @{Validatingmultipletextark}=  Create List        Log in      Register        About Ark         
#         Wait For Mulitple Texts To Be Visible        @{Validatingmultipletextark}
#         Sleep    2
#         Click Element            ${Login_Button_Click}
#         ${Status1}        Run Keyword And Return Status            Wait Until Page Contains               Email            timeout=10
#         Run Keyword If    "${Status1}"=="True"        Input Text          ${Login_UserName}         ${Username}
#         ${Status2}        Run Keyword And Return Status            Wait Until Page Contains               Password         timeout=10
#         Run Keyword If    "${Status2}"=="True"        Input Text          ${Login_Password}         ${Password}
#         ${Status4}        Run Keyword And Return Status         wait Until Page Contains                  Password           timeout=20
#         Run Keyword If    "${Status4}"=="True"        Click Element            ${Login_Password_eyeball}
#         ${Status3}        Run Keyword And Return Status         wait Until Page Contains                  Log In           timeout=20
#         Run Keyword If    "${Status3}"=="True"        Click Element            ${Login_button}

# Validating_ProfileImage_The_Ark
#         [Documentation]                    Validating Profile Image screen
#         @{multipletextark}=  Create List                Global      Private        My Org        News        More        ${Main_page_Searchbar}        ${Main_page_Notificationbar}                   
#         Wait For Mulitple Texts To Be Visible        @{multipletextark}
#         Sleep    5
#         Click Element            ${Main_page_Profile_Icon}


# Validating_My_Organisation_The_Ark
#         [Documentation]                    Validating My Organisation Page with data
#         @{multipletextark}=  Create List     Global      Private        My Org        News        More        ${Main_page_Searchbar}        ${Main_page_Notificationbar}                              
#         Wait For Mulitple Texts To Be Visible        @{multipletextark}
#         Sleep    10
#         Click Element            ${My_Org}
#         Sleep    5

# Validating_My_Org_Navigation_The_Ark 
#         [Documentation]                    Validating My Organisation screen
#         @{multipletextark}=  Create List                Organizations You Admin        Organizations you can follow                     
#         Wait For Mulitple Texts To Be Visible        @{multipletextark}
#         Sleep    5
#         Click Element            ${My_Org_Navigation}
#         Sleep    5


# Validating_My_Org_post_The_Ark 
#         [Documentation]                    Validating My Organisation screen
#         @{multipletextark}=  Create List                Home       About     Contact    Donate
#         Wait For Mulitple Texts To Be Visible        @{multipletextark}
#         Sleep    10
#         FOR     ${result}   IN RANGE    0   3
#             Swipe   1053     2187   1070    899
#             ${result}   Set Variable    ${result}+1
#             Exit For Loop If    ${result}==2
#         END
#         Click Element            ${My_Org_Front_Three_dot}
#         Sleep  5
#         # Wait Until Element Is Visible    xpath=//*[contains(@text, "Delete")]
#         # Click Text    Delete
#         Wait Until Page Contains            xpath=//*[contains(@text, "Delete")]
#         Click Element    xpath=//*[contains(@text, "Delete")]
#         ${is_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=//*[contains(@text,'Delete')]
#         Log    Element Visibility: ${is_visible}
#         Click Element            ${is_visible}





#         Sleep  5
#         # Click Element            ${My_Org_Front_Three_dot_Delete}


# Validating_My_Org_CreateGroup_The_Ark        
#         Sleep    10       
#         ${text1}        Run Keyword And Return Status         wait Until Page Contains                   Create Group           timeout=20
#         Run Keyword If    "${text1}"=="True"        Click Element            ${My_Org_Create_Group}
#         ${text2}        Run Keyword And Return Status         wait Until Page Contains                  Browse           timeout=20
#         Run Keyword If    "${text2}"=="True"        Click Element            ${Create_Group_Browser}
#         ${text3}        Run Keyword And Return Status         wait Until Page Contains                  Allow           timeout=20
#         Run Keyword If    "${text3}"=="True"        Click Element            ${Create_Group_Browser_Allow}
#         ${text4}        Run Keyword And Return Status            Wait Until Page Contains               Albums            timeout=10
#         Run Keyword If    "${text4}"=="True"        Click Element          ${Personal_profile_Image_Album}
#         ${text5}        Run Keyword And Return Status            Wait Until Page Contains               Downloads            timeout=10
#         Run Keyword If    "${text5}"=="True"        Click Element          ${Personal_profile_Album_Downloads}
#         ${text6}        Run Keyword And Return Status            Wait Until Page Contains               Downloads            timeout=10
#         Run Keyword If    "${text6}"=="True"        Click Element          ${Personal_profile_Downloads_Picture}
#         ${text7}        Run Keyword And Return Status            Wait Until Page Contains               Edit Photo            timeout=10
#         Run Keyword If    "${text7}"=="True"        Click Element          ${Create_Group_Browser_Ok}
#         Sleep  5
#         ${text8}        Run Keyword And Return Status            Wait Until Page Contains               Group Name            timeout=10
#         Run Keyword If    "${text8}"=="True"        Input Text    ${My_Org_Create_Group_Name}    ${My_Org_Create_Group_Name_Name}
#         ${text9}        Run Keyword And Return Status            Wait Until Page Contains               Description            timeout=10
#         Run Keyword If    "${text9}"=="True"        Input Text    ${My_Org_Create_Group_Description}        ${My_Org_Create_Group_Description_Descrip}
#         ${text10}        Run Keyword And Return Status            Wait Until Page Contains               Add Moderator            timeout=10
#         Run Keyword If    "${text10}"=="True"        Click Element          ${My_Org_Create_Group_AddModerator}
#         ${text11}        Run Keyword And Return Status            Wait Until Page Contains               Add Moderator            timeout=10
#         Run Keyword If    "${text11}"=="True"        Click Element           ${My_Org_Create_Group_Create}
#         ${text12}        Run Keyword And Return Status            Wait Until Page Contains               Select Moderator            timeout=10
#         Run Keyword If    "${text12}"=="True"        Click Element          ${My_Org_Create_Group_Create_Choose}      
#         ${text13}        Run Keyword And Return Status            Wait Until Page Contains               Create Group            timeout=10
#         Run Keyword If    "${text13}"=="True"        Click Element          ${My_Org_Create_Group_Create_Choose}

# Validating_My_Org_Invites_Group_The_Ark 
#         [Documentation]                    Validating My Organisation Invites screen
#         ${Generate_Random_Email}           Generate Random Email
#         @{multipletextark}=  Create List              Home      About      Contact      Donate     Groups                           
#         Wait For Mulitple Texts To Be Visible        @{multipletextark}
#         Sleep    10
#         ${text1}        Run Keyword And Return Status         wait Until Page Contains                  Followers           timeout=20
#         Run Keyword If    "${text1}"=="True"        Click Element            ${My_Org_Create_Invite}
#         ${text2}        Run Keyword And Return Status         wait Until Page Contains                  Add Member           timeout=20
#         Run Keyword If    "${text2}"=="True"        Input Text      ${My_Org_Create_Invite_AddMember}       ${Generate_Random_Email}                    
#         ${text3}        Run Keyword And Return Status         wait Until Page Contains                  Add Member           timeout=20
#         Run Keyword If    "${text3}"=="True"        Click Element    ${My_Org_Create_Invite_Button}   

# Validating_My_Org_Create_post_The_Ark  
#          [Documentation]                    Validating My Organisation Create Post screen  
#         @{multipletextark}=  Create List              Home      About      Contact      Donate     Groups                           
#         Wait For Mulitple Texts To Be Visible        @{multipletextark} 
#         ${text1}        Run Keyword And Return Status         wait Until Page Contains                  Followers          timeout=20
#         Run Keyword If    "${text1}"=="True"        Click Element            ${My_Org_Announcement} 
#         ${text2}        Run Keyword And Return Status         wait Until Page Contains                  Create Post          timeout=20
#         Run Keyword If    "${text2}"=="True"        Click Element            ${My_Org_Select member}    
#         ${text3}        Run Keyword And Return Status         wait Until Page Contains                  Who can see this post ?          timeout=20
#         Run Keyword If    "${text3}"=="True"        Click Element            ${My_Org_member_only}
#         ${text4}        Run Keyword And Return Status         wait Until Page Contains                  Select Category of your post          timeout=20
#         Run Keyword If    "${text4}"=="True"        Click Element           ${My_Org_member_Catergory}         
#         ${text5}        Run Keyword And Return Status         wait Until Page Contains                  Enter your announcement text here          timeout=20
#         Run Keyword If    "${text5}"=="True"        Input Text    ${My_Org_member_Post}    Hi Everyone!!!! 
#         ${text7}        Run Keyword And Return Status         wait Until Page Contains                  Create Post         timeout=20
#         Run Keyword If    "${text7}"=="True"        Click Element          ${My_Org_member_Image}

#         ${Source3}        Run Keyword And Return Status            Wait Until Page Contains               ${Personal_profile_SelectProfile_word}            timeout=10
#         Run Keyword If    "${Source3}"=="True"        Click Element          ${Personal_profile_Image_Allow}
#         ${Source4}        Run Keyword And Return Status            Wait Until Page Contains               Albums            timeout=10
#         Run Keyword If    "${Source4}"=="True"        Click Element          ${Personal_profile_Image_Album}
#         ${Source5}        Run Keyword And Return Status            Wait Until Page Contains               Downloads            timeout=10
#         Run Keyword If    "${Source5}"=="True"        Click Element          ${Personal_profile_Album_Downloads}
#         ${Source6}        Run Keyword And Return Status            Wait Until Page Contains               Downloads            timeout=10
#         Run Keyword If    "${Source6}"=="True"        Click Element          ${Personal_profile_Downloads_Picture}
#         ${Source7}        Run Keyword And Return Status            Wait Until Page Contains               Edit Photo            timeout=10
#         Run Keyword If    "${Source7}"=="True"        Click Element          ${Personal_profile_Downloads_Profilepic}       
#         Sleep  5
#         ${Source8}        Run Keyword And Return Status            Wait Until Page Contains               Create Post            timeout=10
#         Run Keyword If    "${Source8}"=="True"        Click Element          ${My_Org_member_Video}
#         ${Source9}        Run Keyword And Return Status            Wait Until Page Contains               Albums            timeout=10
#         Run Keyword If    "${Source9}"=="True"        Click Element          ${Personal_profile_Image_Album}
#         ${Source10}        Run Keyword And Return Status            Wait Until Page Contains               Downloads            timeout=10
#         Run Keyword If    "${Source5}"=="True"        Click Element          ${Personal_profile_Album_Downloads}
#         ${Source11}        Run Keyword And Return Status            Wait Until Page Contains               Downloads            timeout=10
#         Run Keyword If    "${Source11}"=="True"        Click Element          ${My_Org_member_Video_Select}
#         ${Source12}        Run Keyword And Return Status            Wait Until Page Contains               Select Thumbnail            timeout=10
#         Run Keyword If    "${Source12}"=="True"        Click Element          ${My_Org_member_Video_Select_Thumb}
#         ${Source13}        Run Keyword And Return Status            Wait Until Page Contains               Create Post            timeout=10
#         Run Keyword If    "${Source13}"=="True"        Click Element          ${My_Org_member_Audio}
#         ${Source14}        Run Keyword And Return Status            Wait Until Page Contains               Audio            timeout=10
#         Run Keyword If    "${Source14}"=="True"        Click Element          ${My_Org_member_Audio_Select}
#         ${text6}        Run Keyword And Return Status         wait Until Page Contains                   Post          timeout=20
#         Run Keyword If    "${text6}"=="True"        Click Element            ${My_Org_member_Post_Button}



# My_Org_Screenshot_The_Ark
#     [Documentation]                    Validating My Private Post
#     @{multipletextark}=  Create List              Home      About      Contact      Donate     Groups 
#     Wait For Mulitple Texts To Be Visible        @{multipletextark} 

#     ${text1}        Run Keyword And Return Status         wait Until Page Contains                  Home          timeout=20
#      Run Keyword If    "${text1}"=="True"        Get Text           ${My_Org_Announcement}

#        FOR     ${result}   IN RANGE    0   10
#             Swipe    1000       2110     1100    650
#             ${xpath_expression} =    Set Variable    //android.widget.TextView[contains(@text, 'Like')]
#             ${like_button_count} =    Get Matching Xpath Count    ${xpath_expression}
#             Log    Number of 'Like' buttons on the page: ${like_button_count}
#             Capture Page Screenshot            ${SCREENSHOT_PATH}
#             ${xpath_expression1} =    Set Variable    //android.widget.TextView[contains(@text, 'Comment')]
#             ${Comment_button_count} =    Get Matching Xpath Count    ${xpath_expression1}
#             Log    Number of 'Comment' buttons on the page: ${Comment_button_count}
#             Capture Page Screenshot            ${SCREENSHOT_PATH}
#             ${xpath_expression2} =    Set Variable    //android.widget.TextView[contains(@text, 'Share')]
#             ${Share_button_count} =    Get Matching Xpath Count    ${xpath_expression2}
#             Log    Number of 'Comment' buttons on the page: ${Share_button_count}
#             Capture Page Screenshot            ${SCREENSHOT_PATH}
#             ${result}   Set Variable    ${result}+1
#             Exit For Loop If    ${result}==8

#         END
       

# My_Org_About_The_Ark
#     [Documentation]                    Validating My Org About
#     @{multipletextark}=  Create List              Home      About      Contact      Donate  
#     Wait For Mulitple Texts To Be Visible        @{multipletextark}
#     ${text1}        Run Keyword And Return Status         wait Until Page Contains                  About          timeout=20
#     Run Keyword If    "${text1}"=="True"        Click Element            ${My_Org_About} 
#     ${text2}        Run Keyword And Return Status         wait Until Page Contains                   Global Admins          timeout=20
#     Run Keyword If    "${text2}"=="True"        AppiumLibrary.Get Text            ${My_Org_About_Global_Admin}
#     Comment    Debug: ${My_Org_About_Global_Admin}        
#     Swipe    1063    2139    1070    916
#     # ${text11}        Run Keyword And Return Status         wait Until Page Contains                   About          timeout=20
#     # Run Keyword If    "${text11}"=="True"        Get Text            ${My_Org_About_About}
#     # # ${text13}        Run Keyword And Return Status         wait Until Page Contains                   About          timeout=20
#     # Run Keyword If    "${text13}"=="True"        Get Text            ${My_Org_About_About}

#     Capture Page Screenshot            ${SCREENSHOT_PATH}
# #     ${text12}        Run Keyword And Return Status         wait Until Page Contains                  Myt Global Admins          timeout=20
# #     Run Keyword If    "${text12}"=="True"        Click Element            ${My_Org_About_Global_Admin_Navigation}
# #     Sleep  10
# #     ${text3}        Run Keyword And Return Status         wait Until Page Contains                  About          timeout=20
# #     Run Keyword If    "${text3}"=="True"        Click Element            ${My_Org_About_Edit}
# #     ${text4}        Run Keyword And Return Status         wait Until Page Contains                  Edit about          timeout=20
# #     Run Keyword If    "${text4}"=="True"        Get Text            ${My_Org_About_Edit_About}
# # #     ${text5}        Run Keyword And Return Status         wait Until Page Contains                  Edit about          timeout=20
# # #     Run Keyword If    "${text5}"=="True"        Input Text            ${My_Org_About_Edit_About}            Automation Setup!!!!Setup Suite
#     # ${text6}        Run Keyword And Return Status         wait Until Page Contains                  Edit about          timeout=20
#     # Run Keyword If    "${text6}"=="True"        Click Element            ${My_Org_About_Edit_About_Save}
#     # Sleep    10
#     # Swipe           1000     1960    1000    860
#     ${text7}        Run Keyword And Return Status         wait Until Page Contains                  Admin          timeout=20
#     Run Keyword If    "${text7}"=="True"        Click Element            ${My_Org_About_Admin_See_all}
#     # ${text0}        Run Keyword And Return Status         wait Until Page Contains                  Admin          timeout=20
#     # Run Keyword If    "${text0}"=="True"        Click Element            ${My_Org_About_Admin_See_all}

User_Card
    Wait Until Element Is Visible           //android.view.ViewGroup[@resource-id="member-list-user-card"]
    ${data_count}=    Get Matching Xpath Count     //android.view.ViewGroup[@resource-id="member-list-user-card"]
    Log    Total number of data items: ${data_count}
    # FOR    ${index}    IN RANGE    ${data_count}
    #     ${data}=    AppiumLibrary.Get Text    //android.view.ViewGroup[@resource-id="member-list-user-card"]
    # Log    Data at index ${index}: ${data}
    # Set Test Variable    ${data}
    # Log    Data outside the loop: ${data}
    # END

    ${elements}=    Get WebElements    //android.view.ViewGroup[@resource-id="member-list-user-card"]
    ${selected_element}=    Select Random Element    //android.view.ViewGroup[@resource-id="member-list-user-card"]
    Click Element    ${selected_element}
# Select Random Element
#     [Arguments]    ${elements}
#     ${selected_element}=    Evaluate    random.choice(${elements})
#     [Return]    ${selected_element}


# #Role_Change
#     Wait Until Element Is Visible           //android.view.ViewGroup[@resource-id="change-user-role-icon-btn"]
#     ${data_count1}=    Get Matching Xpath Count     //android.view.ViewGroup[@resource-id="change-user-role-icon-btn"]
#     Log    Total number of data items: ${data_count1}
#     FOR    ${index1}    IN RANGE    ${data_count1}
#         ${data1}=    AppiumLibrary.Get Text    //android.view.ViewGroup[@resource-id="member-list-user-card"]
#     Log    Data at index ${index1}: ${data1}
#     Set Test Variable    ${data1}
#     Log    Data outside the loop: ${data1}
#     END
# # Check if there are any elements
#     Run Keyword If    ${data_count1} > 0
# ...    Log    Elements are present
# ...    ELSE    Log    No matching elements found

# # Randomly select an index
#     ${random_index}=    Evaluate    random.randint(0, ${data_count1}-1)

# # Get the text of the randomly selected element
#     ${random_data}=    AppiumLibrary.Click Element    //android.view.ViewGroup[@resource-id="change-user-role-icon-btn"][${random_index}]
#     Log    Randomly selected data: ${random_data}



#     # ${text8}        Run Keyword And Return Status         wait Until Page Contains                   Admins         timeout=20
#     # Run Keyword If    "${text8}"=="True"        Click Element            ${My_Org_About_Admin_naviagtion}    
#     # Sleep  10
#     # Swipe           1000     1960    1000    860
#     # ${text9}        Run Keyword And Return Status         wait Until Page Contains                  Members          timeout=20
#     # Run Keyword If    "${text9}"=="True"        Click Element            ${My_Org_About_Member_See_all} 
#     # ${text10}        Run Keyword And Return Status         wait Until Page Contains                  Myt Members         timeout=20
#     # Run Keyword If    "${text10}"=="True"        Click Element            ${My_Org_About_Member_naviagtion}
#     # Sleep  5

# My_Org_Contact_The_Ark
#     [Documentation]                    Validating My Org Contact
#     @{multipletextark}=  Create List              Home      About      Contact      Donate 
#     Wait For Mulitple Texts To Be Visible        @{multipletextark}
#     ${text1}        Run Keyword And Return Status         wait Until Page Contains                  Contact          timeout=20
#     Run Keyword If    "${text1}"=="True"        Click Element            ${My_Org_Contact}
      Swipe    457    1566    475    502
#     ${text2}        Run Keyword And Return Status         wait Until Page Contains                  Contact          timeout=20
#     Run Keyword If    "${text2}"=="True"        Click Element            ${My_Org_Contact_Edit}
#     ${text3}        Run Keyword And Return Status         wait Until Page Contains                  Email          timeout=20
#     Run Keyword If    "${text3}"=="True"        Get Text                ${My_Org_Contact_Email}
#     ${text4}        Run Keyword And Return Status         wait Until Page Contains                  Phone          timeout=20
#     Run Keyword If    "${text4}"=="True"        Get Text                ${My_Org_Contact_Phone}
#     ${text5}        Run Keyword And Return Status         wait Until Page Contains                  Website          timeout=20
#     Run Keyword If    "${text5}"=="True"        Get Text               ${My_Org_Contact_Website}
#     ${text6}        Run Keyword And Return Status         wait Until Page Contains                  State          timeout=20
#     Run Keyword If    "${text6}"=="True"        Get Text                ${My_Org_Contact_state}
#     ${text7}        Run Keyword And Return Status         wait Until Page Contains                  Country          timeout=20
#     Run Keyword If    "${text7}"=="True"        Get Text                ${My_Org_Contact_Contry}
#     ${text8}        Run Keyword And Return Status         wait Until Page Contains                  City          timeout=20
#     Run Keyword If    "${text8}"=="True"        Get Text                ${My_Org_Contact_city}
#     ${text9}        Run Keyword And Return Status         wait Until Page Contains                  Save          timeout=20
#     Run Keyword If    "${text9}"=="True"        Click Element           ${My_Org_Contact_Save}    

# My_Org_Donate_The_Ark
#     [Documentation]                    Validating My Org Contact
#     @{multipletextark}=  Create List              Home      About      Contact      Donate  
#     Wait For Mulitple Texts To Be Visible        @{multipletextark}
#     ${text1}        Run Keyword And Return Status         wait Until Page Contains                  Donate          timeout=20
#     Run Keyword If    "${text1}"=="True"        Click Element            ${My_Org_Donate}
#     Sleep  5
#     Swipe    1000    1970    1000    1400
#     ${text2}        Run Keyword And Return Status         wait Until Page Contains                  Our Minisitries          timeout=20
#     Run Keyword If    "${text2}"=="True"        Click Element            ${My_Org_Donate_Readmore}
    
#     Capture Page Screenshot            ${SCREENSHOT_PATH}
#         FOR     ${result}   IN RANGE    0   8
#             Swipe   1008    2198    1030    1300
#             ${result}   Set Variable    ${result}+1
#             Exit For Loop If    ${result}==6
#         END
#     Capture Page Screenshot            ${SCREENSHOT_PATH}
#         FOR     ${result}   IN RANGE    0   4
#             Swipe   1032    598    1025    1948
#             ${result}   Set Variable    ${result}+1
#             Exit For Loop If    ${result}==3
#         END
      
#       Sleep   5
#       Swipe   1008    1254    513    1254

# My_Org_Followers_The_Ark
#     [Documentation]                    Validating My Org Followers
#     @{multipletextark}=  Create List                    About      Contact      Donate     Followers
#     Wait For Mulitple Texts To Be Visible        @{multipletextark}
#     Sleep  10
#         ${Source}        Run Keyword And Return Status         wait Until Page Contains                  Donate           timeout=20
#         Run Keyword If    "${Source}"=="True"        Click Element    ${My_Org_Foll}

#     ${text4}        Run Keyword And Return Status         wait Until Page Contains                  Followers          timeout=20
#     Run Keyword If    "${text4}"=="True"        Get Text                ${My_Org_Followers_one}
#     ${text5}        Run Keyword And Return Status         wait Until Page Contains                  Followers          timeout=20
#     Run Keyword If    "${text5}"=="True"        Get Text                ${My_Org_Followers_two}
#     ${text6}        Run Keyword And Return Status         wait Until Page Contains                  Followers          timeout=20
#     Run Keyword If    "${text6}"=="True"        Get Text                ${My_Org_Followers_three}


# Validating_EditProfile_Profile_Picture_The_Ark
#         [Documentation]                     Edit Profile Images on profile         
#         @{PageText}=  Create List             Edit Profile        My Posts        My Prayers        Saved items        Following        Settings        Log Out
#         Wait For Mulitple Texts To Be Visible        @{PageText}
#         ${Source}        Run Keyword And Return Status         wait Until Page Contains                  My Profile           timeout=20
#         Run Keyword If    "${Source}"=="True"        Get Text          ${My_Profile_UserName}
#         ${Source}        Run Keyword And Return Status         wait Until Page Contains                  My Profile           timeout=20
#         Run Keyword If    "${Source}"=="True"        Get Text           ${My_Profile_Country}
#         ${Source}        Run Keyword And Return Status         wait Until Page Contains                  Edit Profile           timeout=20
#         Run Keyword If    "${Source}"=="True"        Click Element            ${My_Profile_EditProfile}
#         # ${Source1}        Run Keyword And Return Status            Wait Until Page Contains               Profile Picture            timeout=10
#         # Run Keyword If    "${Source1}"=="True"        Click Element          ${Personal_profile_Edit}
#         # ${Source2}        Run Keyword And Return Status            Wait Until Page Contains               Select profile picture            timeout=10
#         # Run Keyword If    "${Source2}"=="True"        Click Element          ${Personal_profile_SelectProfile}
#         # ${Source3}        Run Keyword And Return Status            Wait Until Page Contains               ${Personal_profile_SelectProfile_word}            timeout=10
#         # Run Keyword If    "${Source3}"=="True"        Click Element          ${Personal_profile_Image_Allow}
#         # ${Source4}        Run Keyword And Return Status            Wait Until Page Contains               Albums            timeout=10
#         # Run Keyword If    "${Source4}"=="True"        Click Element          ${Personal_profile_Image_Album}
#         # ${Source5}        Run Keyword And Return Status            Wait Until Page Contains               Downloads            timeout=10
#         # Run Keyword If    "${Source5}"=="True"        Click Element          ${Personal_profile_Album_Downloads}
#         # ${Source6}        Run Keyword And Return Status            Wait Until Page Contains               Downloads            timeout=10
#         # Run Keyword If    "${Source6}"=="True"        Click Element          ${Personal_profile_Downloads_Picture}
#         # ${Source7}        Run Keyword And Return Status            Wait Until Page Contains               Edit Photo            timeout=10
#         # Run Keyword If    "${Source7}"=="True"        Click Element          ${Personal_profile_Downloads_Profilepic}       
#         Sleep  5

# Validating_About_The_Ark  
#         [Documentation]                    Validating the ark
#         Sleep  30      
#         @{Validating}=  Create List            About        Contact        Relationship        
#         Wait For Mulitple Texts To Be Visible        @{Validating}  
#         ${Text}        Run Keyword And Return Status         wait Until Page Contains                  About           timeout=20
#         Run Keyword If    "${Text}"=="True"        Click Element            ${Personal_profile_About_Edit}
#         Sleep  10

# Validating_Edit_The_Ark       
#         [Documentation]                    Validating Edit the data About the ark
#         Sleep  5      
#         @{ValidatingData}=  Create List            About       First Name     Middle Name    Last Name     Date-of-Birth     Gender       
#         Wait For Mulitple Texts To Be Visible       @{ValidatingData}
#         ${Text}        Run Keyword And Return Status         wait Until Page Contains                 First Name           timeout=20
#         Run Keyword If    "${Text}"=="True"        Clear Text            ${Personal_profile_Frst}
#         ${Text1}        Run Keyword And Return Status         wait Until Page Contains                 First Name           timeout=20
#         Run Keyword If    "${Text1}"=="True"        Input Text            ${Personal_profile_Frst}       ${Personal_profile_FirstName}
#         ${Text2}        Run Keyword And Return Status         wait Until Page Contains                 Middle Name           timeout=20
#         Run Keyword If    "${Text2}"=="True"        Clear Text            ${Personal_profile_Middle} 
#         ${Text3}        Run Keyword And Return Status         wait Until Page Contains                 First Name           timeout=20
#         Run Keyword If    "${Text3}"=="True"        Input Text            ${Personal_profile_Middle}       ${Personal_profile_MiddleName}
#         ${Text4}        Run Keyword And Return Status         wait Until Page Contains                 Last Name           timeout=20
#         Run Keyword If    "${Text4}"=="True"        Clear Text            ${Personal_profile_Last}
#         ${Text5}        Run Keyword And Return Status         wait Until Page Contains                 Last Name           timeout=20
#         Run Keyword If    "${Text5}"=="True"        Input Text            ${Personal_profile_Last}       ${Personal_profile_LastName}
#         ${Text6}        Run Keyword And Return Status         wait Until Page Contains                 Date-of-Birth           timeout=20
#         Run Keyword If    "${Text6}"=="True"        Get Text            ${Personal_profile_Dob}
#         ${Text7}        Run Keyword And Return Status         wait Until Page Contains                 Save           timeout=20
#         Run Keyword If    "${Text7}"=="True"        Click Element           ${Personal_profile_Save}    
#         Sleep    10

# Validating_Date_of_birth
#         ${Text8}        Run Keyword And Return Status         wait Until Page Contains                 About          timeout=20
#         Run Keyword If    "${Text8}"=="True"        Click Element           ${Personal_profile_dob_publicicon}
#         Sleep    10
#         ${Text9}        Run Keyword And Return Status         wait Until Page Contains                 Public          timeout=20
#         Run Keyword If    "${Text9}"=="True"        Click Element           ${Personal_profile_dob_public} 
#        Sleep    10
#         ${Text10}        Run Keyword And Return Status         wait Until Page Contains                 Public           timeout=20
#         Run Keyword If    "${Text10}"=="True"        Click Element           ${Personal_profile_dob_closebutton} 
#         Sleep    10
#         ${Text11}        Run Keyword And Return Status         wait Until Page Contains                 About          timeout=20
#         Run Keyword If    "${Text11}"=="True"        Click Element           ${Personal_profile_dob_publicicon}
#         Sleep    10
#         ${Text12}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
#         Run Keyword If    "${Text12}"=="True"        Click Element           ${Personal_profile_dob_organisation} 
#         ${Text121}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
#         Run Keyword If    "${Text121}"=="True"        Click Element           ${Personal_profile_dob_closebutton}       
#         Sleep    10
#         ${Text13}        Run Keyword And Return Status         wait Until Page Contains                 OK            timeout=20
#         Run Keyword If    "${Text13}"=="True"        Click Element           ${Choose_any_org_Ok}
#         Sleep    10
#         ${Text14}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
#         Run Keyword If    "${Text14}"=="True"        Click Element           ${Personal_profile_dob_organisation_Selectall} 
#         Sleep    10
#         ${Text15}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
#         Run Keyword If    "${Text15}"=="True"        Click Element           ${Personal_profile_dob_closebutton} 
#         Sleep    10
#         ${Text16}        Run Keyword And Return Status         wait Until Page Contains                 About          timeout=20
#         Run Keyword If    "${Text16}"=="True"        Click Element           ${Personal_profile_dob_orgicon}
#         Sleep    10
#         ${Text17}        Run Keyword And Return Status         wait Until Page Contains                 Private          timeout=20
#         Run Keyword If    "${Text17}"=="True"        Click Element           ${Personal_profile_dob_private}    
#         Sleep    10    
#         ${Text18}        Run Keyword And Return Status         wait Until Page Contains                 Private           timeout=20
#         Run Keyword If    "${Text18}"=="True"        Click Element           ${Personal_profile_dob_closebutton}
    

# Validating_Contact_The_Ark
#         [Documentation]                    Ensure the Contact
#         ${random_phone_number}                     Generate Random Phone Number
#         Sleep  5      
#         @{Validating}=  Create List            Contact       Relationship              
#         Wait For Mulitple Texts To Be Visible        @{Validating} 
#         ${Data}        Run Keyword And Return Status         wait Until Page Contains                Contact           timeout=20
#         Run Keyword If    "${Data}"=="True"        Click Element       ${Personal_profile_Contact_Edit}
#         ${Data1}        Run Keyword And Return Status         wait Until Page Contains                Contact           timeout=40
#         Run Keyword If    "${Data1}"=="True"        Clear Text           ${Personal_profile_Number}
#         ${Data2}        Run Keyword And Return Status         wait Until Page Contains                Contact           timeout=40
#         Run Keyword If    "${Data2}"=="True"        Input Text           ${Personal_profile_Number}         ${random_phone_number}   
#         ${Data3}        Run Keyword And Return Status         wait Until Page Contains                Email           timeout=20
#         Run Keyword If    "${Data3}"=="True"        Get Text           ${Personal_profile_Email}
#         ${Data4}        Run Keyword And Return Status         wait Until Page Contains                Email           timeout=20
#         Run Keyword If    "${Data4}"=="True"        Click Element       ${Personal_profile_Contact_Save}
# Validating_Contact_Privacy_Option  
#         [Documentation]                    Ensure the Contact privacy option      
#         Sleep    5
#         ${Text1}        Run Keyword And Return Status         wait Until Page Contains                 About          timeout=20
#         Run Keyword If    "${Text1}"=="True"        Click Element           ${Personal_profile_Contact_publicicon}
#         Sleep    5
#         ${Text2}        Run Keyword And Return Status         wait Until Page Contains                 Public          timeout=20
#         Run Keyword If    "${Text2}"=="True"        Click Element           ${Personal_profile_contact_public}  
#         Sleep    10
#         ${Text3}        Run Keyword And Return Status         wait Until Page Contains                 Public           timeout=20
#         Run Keyword If    "${Text3}"=="True"        Click Element           ${Personal_profile_phone_closebutton} 
#         Sleep    10
#         ${Text4}        Run Keyword And Return Status         wait Until Page Contains                 About          timeout=20
#         Run Keyword If    "${Text4}"=="True"        Click Element           ${Personal_profile_Contact_publicicon}
#         Sleep    10
#         ${Text5}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
#         Run Keyword If    "${Text5}"=="True"        Click Element           ${Personal_profile_contact_organisation}
#         Sleep    10
#         Click Element           ${Personal_profile_phone_closebutton}
#         Sleep    10
#         ${Text6}        Run Keyword And Return Status         wait Until Page Contains                 OK            timeout=20
#         Run Keyword If    "${Text6}"=="True"        Click Element           ${Choose_any_org_Ok}
#         Sleep    5
#         ${Text7}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
#         Run Keyword If    "${Text7}"=="True"        Click Element          ${Personal_profile_phone_organisation_Selectall} 
#         Sleep    5
#         ${Text8}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
#         Run Keyword If    "${Text8}"=="True"        Click Element           ${Personal_profile_phone_closebutton} 
#         Sleep    10
#         ${Text9}        Run Keyword And Return Status         wait Until Page Contains                 About          timeout=20
#         Run Keyword If    "${Text9}"=="True"        Click Element           ${Personal_profile_Contact_orgicon}
#         Sleep    10
#         ${Text10}        Run Keyword And Return Status         wait Until Page Contains                 Private          timeout=20
#         Run Keyword If    "${Text10}"=="True"        Click Element          ${Personal_profile_phone_private}    
#         Sleep    10    
#         ${Text11}        Run Keyword And Return Status         wait Until Page Contains                 Private           timeout=20
#         Run Keyword If    "${Text11}"=="True"        Click Element           ${Personal_profile_phone_closebutton}
#         Sleep    20

# Validating_Email_Privacy_option
#        ${Text1}        Run Keyword And Return Status         wait Until Page Contains                 About          timeout=20
#         Run Keyword If    "${Text1}"=="True"        Click Element           ${Personal_profile_email_publicicon}
#         Sleep    5
#         ${Text2}        Run Keyword And Return Status         wait Until Page Contains                 Public          timeout=20
#         Run Keyword If    "${Text2}"=="True"        Click Element           ${Personal_profile_email_public}  
#         Sleep    5
#         ${Text3}        Run Keyword And Return Status         wait Until Page Contains                 Public           timeout=20
#         Run Keyword If    "${Text3}"=="True"        Click Element           ${Personal_profile_email_closebutton} 
#         Sleep    5
#        ${Text4}        Run Keyword And Return Status         wait Until Page Contains                 About          timeout=20
#         Run Keyword If    "${Text4}"=="True"        Click Element           ${Personal_profile_email_publicicon}
#         ${Text5}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
#         Run Keyword If    "${Text5}"=="True"        Click Element          ${Personal_profile_email_organisation} 
#         Click Element           ${Personal_profile_email_closebutton} 
#         ${Text6}        Run Keyword And Return Status         wait Until Page Contains                 OK            timeout=20
#         Run Keyword If    "${Text6}"=="True"        Click Element           ${Choose_any_org_Ok}
#         ${Text7}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
#         Run Keyword If    "${Text7}"=="True"        Click Element          ${Personal_profile_email_organisation_Selectall} 
#         ${Text8}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
#         Run Keyword If    "${Text8}"=="True"        Click Element           ${Personal_profile_email_closebutton} 
#         Sleep   5
#         ${Text9}        Run Keyword And Return Status         wait Until Page Contains                 About          timeout=20
#         Run Keyword If    "${Text9}"=="True"        Click Element           ${Personal_profile_email_orgicon}
#         ${Text10}        Run Keyword And Return Status         wait Until Page Contains                 Private          timeout=20
#         Run Keyword If    "${Text10}"=="True"        Click Element          ${Personal_profile_email_private}        
#         ${Text11}        Run Keyword And Return Status         wait Until Page Contains                 Private           timeout=20
#         Run Keyword If    "${Text11}"=="True"        Click Element           ${Personal_profile_email_closebutton}





# Validating_Address_The_Ark
#         [Documentation]                    Ensure the Address 
#         Swipe                               1056  2187  1073  1381
#         @{Validating}=  Create List            Address       Relationship              
#         Wait For Mulitple Texts To Be Visible        @{Validating}  
        
#         ${Letters}        Run Keyword And Return Status         wait Until Page Contains                Address           timeout=20
#         Run Keyword If    "${Letters}"=="True"        Click Element       ${Country_Edit} 
#         ${Letters2}        Run Keyword And Return Status         wait Until Page Contains                State           timeout=20
#         Run Keyword If    "${Letters2}"=="True"        Get Text       ${My_Profile_EditProfile_Address_State}
#         ${Letters3}        Run Keyword And Return Status         wait Until Page Contains                City           timeout=20
#         Run Keyword If    "${Letters3}"=="True"        Get Text       ${My_Profile_EditProfile_Address_City}
#         ${Letters4}        Run Keyword And Return Status         wait Until Page Contains                Street           timeout=20
#         Run Keyword If    "${Letters4}"=="True"        Get Text       ${My_Profile_EditProfile_Address_Street}
#         ${Letters5}        Run Keyword And Return Status         wait Until Page Contains                ZipCode           timeout=20
#         Run Keyword If    "${Letters5}"=="True"        Get Text       ${My_Profile_EditProfile_Address_Street}
#         ${Letters6}        Run Keyword And Return Status         wait Until Page Contains                Save           timeout=20
#         Run Keyword If    "${Letters6}"=="True"        Click Element       ${My_Profile_EditProfile_Address_Save}
# Validating_Address_Privacy_Option
#         [Documentation]                    Ensure the Address privacy option
#         @{Validating}=  Create List            Contact       Relationship              
#         Wait For Mulitple Texts To Be Visible        @{Validating} 
#         Swipe                               1056  2187  1073  1381
#         ${Text1}        Run Keyword And Return Status         wait Until Page Contains                 Address          timeout=20
#         Run Keyword If    "${Text1}"=="True"        Click Element           ${Personal_profile_address_publicicon}
#         Sleep    5
#         ${Text2}        Run Keyword And Return Status         wait Until Page Contains                 Public          timeout=20
#         Run Keyword If    "${Text2}"=="True"        Click Element           ${Personal_profile_address_public}  
#         Sleep    5
#         ${Text3}        Run Keyword And Return Status         wait Until Page Contains                 Public           timeout=20
#         Run Keyword If    "${Text3}"=="True"        Click Element           ${Personal_profile_address_closebutton} 
#         Sleep    5
#        ${Text4}        Run Keyword And Return Status         wait Until Page Contains                 Address          timeout=20
#         Run Keyword If    "${Text4}"=="True"        Click Element           ${Personal_profile_address_publicicon}
#         ${Text5}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
#         Run Keyword If    "${Text5}"=="True"        Click Element          ${Personal_profile_address_organisation} 
#         Click Element           ${Personal_profile_address_closebutton} 
#         ${Text6}        Run Keyword And Return Status         wait Until Page Contains                 OK            timeout=20
#         Run Keyword If    "${Text6}"=="True"        Click Element           ${Choose_any_org_Ok}
#         ${Text7}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
#         Run Keyword If    "${Text7}"=="True"        Click Element          ${Personal_profile_address_organisation_Selectall} 
#         ${Text8}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
#         Run Keyword If    "${Text8}"=="True"        Click Element           ${Personal_profile_address_closebutton} 
#         Sleep   5
#         ${Text9}        Run Keyword And Return Status         wait Until Page Contains                 Address          timeout=20
#         Run Keyword If    "${Text9}"=="True"        Click Element           ${Personal_profile_address_orgicon}
#         ${Text10}        Run Keyword And Return Status         wait Until Page Contains                 Private          timeout=20
#         Run Keyword If    "${Text10}"=="True"        Click Element          ${Personal_profile_address_private}        
#         ${Text11}        Run Keyword And Return Status         wait Until Page Contains                 Private           timeout=20
#         Run Keyword If    "${Text11}"=="True"        Click Element           ${Personal_profile_address_closebutton}
        


# Validating_My_Post
#         [Documentation]                    Ensure the Personal profile
#         # @{Validating}=  Create List            Contact                     
#         # Wait For Mulitple Texts To Be Visible        @{Validating}
#         # ${Text1}        Run Keyword And Return Status         wait Until Page Contains                 Contact          timeout=20
#         # Run Keyword If    "${Text1}"=="True"        Click Element          ${Personal_profile_BackNaviga}
#         # @{Validatingmultipletextark}=  Create List        My Posts            My Prayers        Saved items        Following      Settings        Log Out        
#         # Wait For Mulitple Texts To Be Visible        @{Validatingmultipletextark}
#         ${Text2}        Run Keyword And Return Status         wait Until Page Contains                 My Posts          timeout=20
#         Run Keyword If    "${Text2}"=="True"        Click Element         ${My_Profile_MyPosts}
#         Sleep  10
# Validating_My_Post_Posting_The_Ark
#         [Documentation]                    Ensure the Personal profile
#         @{Validatingmultipletextark}=  Create List        My Posts             Comment       Share      
#         Wait For Mulitple Texts To Be Visible        @{Validatingmultipletextark}
#         Sleep   10
#         ${Text1}        Run Keyword And Return Status         wait Until Page Contains                 My Posts          timeout=20
#         Run Keyword If    "${Text1}"=="True"        Get Text       ${My_Profile_MyPosts_Title1}
#         # ${Text2}        Run Keyword And Return Status         wait Until Page Contains                 My Posts          timeout=20
#         # Run Keyword If    "${Text2}"=="True"        Click Element         ${My_Profile_MyPosts_Threedot}
#         # Sleep  10
#         # ${Text3}        Run Keyword And Return Status         wait Until Page Contains                 My Posts          timeout=20
#         # Run Keyword If    "${Text3}"=="True"        Click Element         ${My_Profile_MyPosts_Threedot}
#         # ${Text4}        Run Keyword And Return Status         wait Until Page Contains                 Like          timeout=20
#         # Run Keyword If    "${Text4}"=="True"        Click Element         ${My_Profile_MyPosts_Like1}
#         # ${Text5}        Run Keyword And Return Status         wait Until Page Contains                 Like          timeout=20
#         # Run Keyword If    "${Text5}"=="True"        Click Element         ${My_Profile_MyPosts_Like1}
#     FOR     ${result}   IN RANGE    0   5
#             Click Element    ${My_Profile_MyPosts_Like1}
#             Sleep    5
#             ${result}   Set Variable    ${result}+1
#             Exit For Loop If    ${result}==3
#     END 
       
#        Click Element         ${My_Profile_MyPosts_Comment1}
#        Sleep  20
#     FOR     ${result}   IN RANGE    0   5    
#         ${random_comment} =    Generate Random String    10    # Change 10 to the desired length of the comment
#         Input Text    ${My_Profile_MyPosts_Comment1_LIKE}    ${random_comment}
#         Click Element    ${My_Profile_MyPosts_Comment1_OK}
#         ${result}   Set Variable    ${result}+1
#         Exit For Loop If    ${result}==3
#         Sleep    5 
#     END
#         Click Element          ${My_Profile_MyPosts_Back}
#         Sleep   10
#         @{Validatingmultipletextark}=  Create List         Comment       Share      
#         Wait For Mulitple Texts To Be Visible        @{Validatingmultipletextark}
#         ${Text1}        Run Keyword And Return Status         wait Until Page Contains                 Comment          timeout=20
#         Run Keyword If    "${Text1}"=="True"        Get Text       ${My_Profile_MyPosts_Comment1_count}

#     FOR     ${result}   IN RANGE    0   20
#             Swipe       1053    1914      1066    1172
#             Sleep   5
#             ${xpath_expression} =    Set Variable    //android.widget.TextView[contains(@text, 'Like')]
#             ${like_button_count} =    Get Matching Xpath Count    ${xpath_expression}
#             Log    Number of 'Like' buttons on the page: ${like_button_count}
#             Capture Page Screenshot            ${SCREENSHOT_PATH}
#             ${xpath_expression1} =    Set Variable    //android.widget.TextView[contains(@text, 'Comment')]
#             ${Comment_button_count} =    Get Matching Xpath Count    ${xpath_expression1}
#             Log    Number of 'Comment' buttons on the page: ${Comment_button_count}
#             Capture Page Screenshot            ${SCREENSHOT_PATH}
#             ${xpath_expression2} =    Set Variable    //android.widget.TextView[contains(@text, 'Share')]
#             ${Share_button_count} =    Get Matching Xpath Count    ${xpath_expression2}
#             Log    Number of 'Comment' buttons on the page: ${Share_button_count}
#             Capture Page Screenshot            ${SCREENSHOT_PATH}
#             ${result}   Set Variable    ${result}+1
#             Exit For Loop If    ${result}==10
#     END    

    



# Validating_MainFeedPage_The_Ark
#         [Documentation]                    Validating Main Feed Page screen
#          @{Validatingmultipletextark}=  Create List        Like            Comment        Share        Global      Private        My Org        News        More        ${Main_page_Searchbar}        ${Main_page_Notificationbar}        ${Main_page_Profile_Icon}         
#         Wait For Mulitple Texts To Be Visible        @{Validatingmultipletextark}
#         Sleep    2
#         Click Element            ${Main_page_Private_Icon}
#         Sleep    5
#         Click Element            ${Main_page_MyOrg_Icon}
#         Sleep    5 
#         Click Element            ${Main_page_News_Icon}
#         Sleep    5
#         # Click Element            ${Main_page_More_Option}
#         # Sleep    5
#         Click Element            ${Main_page_Floating_Button}


# Validating_Main_More_Option_The_Ark
#         [Documentation]                    Validating Main Option Page screen
#         @{Validatingmultipletextark}=  Create List        Prayer Diary            My Groups        Pending Invites        Ark Enterprise      Manage Group Requests        About Ark        
#         Sleep    2
#         ${Status1}    Run Keyword And Return Status         Wait Until Page Contains        Prayer Diary                                   timeout=10
#         Run Keyword If    "${Status1}"=="True"        Click Element            ${More_Option_PrayerDiary}
#         Sleep    5
#         Click Element            ${More_Option_PrayerDiary_Navigator}
#         Sleep    5
#         ${Status2}    Run Keyword And Return Status         Wait Until Page Contains        My Groups                                   timeout=10
#         Run Keyword If    "${Status2}"=="True"        Click Element            ${More_Option_Mygroups}
#         Sleep    5
#         Click Element            ${More_Option_Mygroup_Navigator}
#         Sleep    5
#         ${Status3}    Run Keyword And Return Status         Wait Until Page Contains        Pending Invites                                   timeout=10
#         Run Keyword If    "${Status3}"=="True"        Click Element            ${More_Option_PendingInvites}
#         Sleep    5
#         Click Element            ${More_Option_PendingInvites_Navigator}
#         Sleep    5
#         ${Status4}    Run Keyword And Return Status         Wait Until Page Contains        Manage Group Requests                                   timeout=10
#         Run Keyword If    "${Status4}"=="True"        Click Element            ${More_Option_GroupRequest}
#         Sleep    5
#         Click Element            ${More_Option_GroupRequest_Navigator}
#         Sleep    5
#         ${Status5}    Run Keyword And Return Status         Wait Until Page Contains        Manage Group Requests                                   timeout=10
#         Run Keyword If    "${Status5}"=="True"        Click Element            ${More_Option_AboutArk}
#         Sleep    5
#         Click Element            ${More_Option_AboutArk_Navigator}


# Validating_My_Profile_The_Ark
#         [Documentation]                    Validating More Option screen
#         [Arguments]                        ${CurrentPass}                ${Newpass}                ${Repass}
#         Sleep    10
#         Click Element        ${My_Profile_Image}            
#         @{ValidatingRegisterPageText}=  Create List             Edit Profile        My Posts        My Prayers        Saved items        Following        Settings        Log Out
#         ${Status}        Run Keyword And Return Status        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
#         Run Keyword If    '${Status}'=='True'      Click Element       ${My_Profile_MyPosts}
#         Sleep    2
#         Click Element            ${My_Profile_MyPosts_BackNavigation}
#         Sleep    5
#         Click Element            ${My_Profile_MyPrayers}
#         Sleep    5
#         Click Element            ${My_Profile_MyPrayers_BackNavigation}
#         Sleep    5
#         Click Element            ${My_Profile_SavedItems}
#         Sleep    5
#         Click Element            ${My_Profile_SavedItems_BackNavigation}
#         Sleep    5
#         Click Element            ${My_Profile_Following}
#         Sleep    5
#         Click Element            ${My_Profile_Following_BackNavigation}
#         Sleep    5
#         Click Element            ${My_Profile_Settings}
#         Sleep    5
#         Click Element            ${My_Profile_Settings_AccountSettings}
#         Sleep    5
#         Click Element            ${My_Profile_Settings_ChangePassword}
#         Sleep    5
#         @{ValidatingRegisterPageText}=  Create List             Change Password        Current Password        New Password        Re-enter Password        Save
#         ${Status}        Run Keyword And Return Status        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
#         Run Keyword If    '${Status}'=='True'      Input Text       ${My_Profile_Settings_CurrentPassword}                        ${CurrentPass}
#         Sleep    5
#         Click Element            ${My_Profile_EyeBall_CurrentPassword}
#         Sleep    5
#         Input Text               ${My_Profile_Settings_NewPassword}                        ${Newpass}
#         Sleep    5
#         Click Element            ${My_Profile_EyeBall_NewPassword}
#         Sleep    5
#         Input Text               ${My_Profile_Settings_RePassword}                         ${Repass}
#         Sleep    5
#         Click Element            ${My_Profile_EyeBall_RePassword}
#         Sleep    5
#         Click Element            ${My_Profile_Save}
#         Sleep    5
#         Click Element            ${My_Profile_ChangeAcccountSetting}
#         Sleep    5
#         Click Element            ${My_Profile_Settings_BackNavigation}
#         Sleep    5
#         @{ValidatingRegisterPageText}=  Create List             Edit Profile        My Posts        My Prayers        Saved items        Following        Settings        Log Out
#         ${Status}        Run Keyword And Return Status        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}                    
#         Run Keyword If    '${Status}'=='True'      Click Element       ${My_Profile_LogOut}
#         @{ValidatingRegisterPageText}=  Create List         Are you sure you want to log out?        Hope to see you soon.        Cancel        Logout                              
#         Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
#         Click Element        	${My_Profile_LogOut_Continue}



# Validating_Edit_Profile_The_Ark
#         [Documentation]                    Validating Edit Profile screen
#         Sleep    10
#         Click Element        ${My_Profile_Image}            
#         @{ValidatingRegisterPageText}=  Create List             Edit Profile        My Posts        My Prayers        Saved items        Following        Settings        Log Out
#         ${Status}        Run Keyword And Return Status        Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
#         Run Keyword If    '${Status}'=='True'      Click Element       ${My_Profile_MyPosts}


# Validating_More_Option_The_Ark
#         [Documentation]                    Validating More Option screen
#          @{Validatingmultipletextark}=  Create List        Prayer Diary            My Groups        Pending Invites        Ark Enterprise      Manage Group Requests        About Ark               
#         Wait For Mulitple Texts To Be Visible        @{Validatingmultipletextark}
#         Sleep    5




# Wait For Mulitple Texts To Be Visible
#         [Arguments]     @{TextsToBeChecked}
#         FOR    ${Text}    IN    @{TextsToBeChecked}
#             Wait Until Page Contains    ${Text}      timeout=60
#         END



# Registration_Invalid_Mail_Verification_The_Ark
#         [Documentation]        Validating Invalid Email error response 
#         [Arguments]        ${Expectedvalue}
#         ${Status}    Run Keyword And Return Status            Wait Until Page Contains Element            ${Register_email_correction}        timeout=30
#         ${Valuetxt}           Get Text            ${Register_email_correction}
#         Run Keyword If    "${Status}"=="True"        Should Be Equal              ${Valuetxt}        ${Expectedvalue} 
#         Log    Text Matching: You seem to have an account already! Kindly try logging in again else provide alternate email
#         Sleep    2
#         Click Element       ${Register_Back_button}


# Registration_Invalid_phonenumber_Verification_The_Ark 
#         [Documentation]        Validating Invalid Phonenumber error response 
#         [Arguments]        ${Expectedvalue}
#         ${Status}    Run Keyword And Return Status            Wait Until Page Contains Element            ${Phone_number_error_message}        timeout=30
#         ${Valuetxt}           Get Text            ${Phone_number_error_message}
#         Run Keyword If    "${Status}"=="True"        Should Be Equal              ${Valuetxt}        ${Expectedvalue} 
#         Log    Text Matching: You seem to have an account already! Kindly try logging in again else provide alternate Number
#         Sleep    2
#         Click Element       ${Register_Back_button}



# Loginpage_with_Invalid_Password
#         [Documentation]        Validating Invalid password credential 
#         [Arguments]        ${Expectedvalue}
#         ${Status}    Run Keyword And Return Status            Wait Until Page Contains Element            ${Invalid_pas_id}        timeout=30
#         ${Valuetxt}           Get Text            ${Invalid_pas_id}
#         Run Keyword If    "${Status}"=="True"        Should Be Equal              ${Valuetxt}        ${Expectedvalue} 
#         Log    Text Matching: Invalid email or password
#         Sleep    2
#         Click Element       ${Invalid_ok_button}
#         ${Status}        Run Keyword And Return Status            Wait Until Page Contains               Password            timeout=10
#         Run Keyword If    "${Status}"=="True"        Clear Text          ${Login_UserName} 
#         ${Status}        Run Keyword And Return Status            Wait Until Page Contains               Password            timeout=10
#         Run Keyword If    "${Status}"=="True"        Clear Text          ${Login_Password}         


# Validate_with_Validusername_Loginpage_The_Ark
#         [Documentation]        Validating Login Page
#         [Arguments]        ${Username}        ${Password} 
#         @{ValidatingRegisterPageText}=  Create List         Log In        Email        Password        Not registered? Signup here        Forgot Password?        About Ark                            
#         Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
#         ${Status1}        Run Keyword And Return Status            Wait Until Page Contains               Email            timeout=10
#         Run Keyword If    "${Status1}"=="True"        Input Text          ${Login_UserName}         ${Username}
#         ${Status2}        Run Keyword And Return Status            Wait Until Page Contains               Password         timeout=10
#         Run Keyword If    "${Status2}"=="True"        Input Text          ${Login_Password}         ${Password}
#         ${Status4}        Run Keyword And Return Status         wait Until Page Contains                  Password           timeout=20
#         Click Element            ${Login_Password_eyeball}
#         ${Status3}        Run Keyword And Return Status         wait Until Page Contains                  Log In           timeout=20
#         Click Element            ${Login_button}

# Validate_with_PendingInvites_The_Ark
#         [Documentation]        Validating Pending Invite Page
#         @{ValidatingRegisterPageText}=  Create List         Pending Invites        Role        Reject        Accept                            
#         Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
#         ${Status}        Run Keyword And Return Status         wait Until Page Contains                  Accept           timeout=20
#         Run Keyword If    "${Status}"=="True"            Click Element            ${Pending_Invites}
#         Sleep    2
#         ${Status3}        Run Keyword And Return Status         wait Until Page Contains                  No Invites found           timeout=20
#         Run Keyword If    "${Status}"=="True"            Click Element            ${More_Option_PendingInvites_Navigator}


# Validate_with_Notification_The_Ark
#         [Documentation]        Validating Notification Page
#         Sleep        3
#         Click Element            ${Notification_bar}
#         @{ValidatingRegisterPageText}=  Create List         Notification        Mark all as read        Thats all for now                            
#         Wait For Mulitple Texts To Be Visible        @{ValidatingRegisterPageText}
#         ${Status}        Run Keyword And Return Status         wait Until Page Contains               Myt           timeout=20
#         Run Keyword If    "${Status}"=="True"        Click Element            ${Notificaion}
#         ${Status}        Run Keyword And Return Status         wait Until Page Contains               No Invites found           timeout=20
#         Run Keyword If    "${Status}"=="True"        Click Element            ${More_Option_PendingInvites_Navigator}
#         Sleep      2
#         Click Element            ${Notificaion_Navigator}

# Generate Random User
#     [Documentation]     Keywords for generating new users
#     ${random_string}    Generate Random String    8    [NUMBERS]
#     ${username}    Set Variable    User${random_string}@gmail.com
#     [Return]    ${username}
       

# Generate Random Password
#     [Documentation]     Keywords for generating new Password
#     ${random_string}    Generate Random String    8    [NUMBERS]
#     ${password}    Set Variable    Password${random_string}@!
#     [Return]    ${password}




# Validate_with_Validusername_Loginpage_The_Ark2
#     [Documentation]    Validating More Option screen
#     ${Generate_Random_User}        Generate Random User
#     ${Generate_Random_Password}    Generate Random Password
#     @{ValidatingRegisterPageText}=  Create List    Log In    Email    Password    Not registered? Signup here    Forgot Password?    About Ark
#     ${Status}    Run Keyword And Return Status    Wait Until Page Contains Element    ${ValidatingRegisterPageText}

#     Log    New user generated: ${Generate_Random_User}
#     Log    New password generated: ${Generate_Random_User}

#     ${Status}    Run Keyword And Return Status    Wait Until Page Contains Element    ${Login_UserName}    timeout=30
#     Run Keyword If    "${Status}"=="True"    Input Text    ${Login_UserName}    ${Generate_Random_User}

#     ${PasswordStatus}    Run Keyword And Return Status    Wait Until Page Contains Element    ${Login_Password}    timeout=10
#     Run Keyword If    "${PasswordStatus}"=="True"    Input Text    ${Login_Password}    ${Generate_Random_User}

#     ${Status4}        Run Keyword And Return Status         wait Until Page Contains                  Password           timeout=20
#     Click Element            ${Login_Password_eyeball}
#     ${Status3}        Run Keyword And Return Status         wait Until Page Contains                  Log In           timeout=20
#     Click Element            ${Login_button}


