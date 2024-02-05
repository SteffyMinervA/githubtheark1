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





Resource     ${CURDIR}${/}..//..//Variables//Mobile//5.MyOrg.robot
Resource     ${CURDIR}${/}..//..//Variables//Mobile//Configuration.robot
   



*** Keywords ***

App_Launch_Ark
        [Documentation]     Open The Ark application
        Log                 ${DEVICE_NAME}
        Open Application    ${APPIUM_SERVER}    platformName=${PLATFORM_NAME}   platformVersion=${PLATFORM_VERSION}
        ...                 udid=${DEVICE_ID}   deviceName=${DEVICE_NAME}   appPackage=${PACKAGE_NAME0}   appActivity=${ACTIVITY_NAME0}
        Set Appium Timeout  180


Validating_Login_Mainpage_The_Ark
        [Documentation]                    Validating login screen
        @{Validatingmultipletextark}=  Create List        Log in      Register            
        Page Should Contain Text       @{Validatingmultipletextark}
        Sleep    2
        Click Element            ${Login_Button_Click}
        ${Status1}        Run Keyword And Return Status            Wait Until Page Contains               Email            timeout=10
        Run Keyword If    "${Status1}"=="True"        Input Text          ${Login_UserName}         ${Username}
        ${Status2}        Run Keyword And Return Status            Wait Until Page Contains               Password         timeout=10
        Run Keyword If    "${Status2}"=="True"        Input Text          ${Login_Password}         ${Password}
        ${Status4}        Run Keyword And Return Status         wait Until Page Contains                  Password           timeout=20
        Run Keyword If    "${Status4}"=="True"        Click Element            ${Login_Password_eyeball}
        ${Status3}        Run Keyword And Return Status         wait Until Page Contains                  Log In           timeout=20
        Run Keyword If    "${Status3}"=="True"        Click Element            ${Login_button}
        Sleep    10
Validating_My_Organisation_The_Ark

        [Documentation]                    Validating My Organisation Page with data
        Sleep    5
        @{multipletextark}=  Create List     Global   
        Wait Until Page Contains   @{multipletextark}
        Sleep    10
        Click Element            ${My_Org}
        Sleep    10

Validating_My_Organisation_Navigation_The_Ark
        [Documentation]                    Validating My Organisation  
        @{multipletextark}=  Create List     Organizations
        Wait Until Page Contains   @{multipletextark}
        Sleep    10
        Click Element            ${My_Org_Navigation}
        Sleep    5
Validating_My_Organisation_EditImage_The_Ark
        [Documentation]                    Validating My Edit Page 
        @{multipletextark}=  Create List     The Ark
        Wait Until Page Contains   @{multipletextark}
        Sleep    10
        Click Element            ${My_Org_EditPic}
        Sleep    10
        ${Status1}        Run Keyword And Return Status         wait Until Page Contains                 Allow           timeout=20
        Run Keyword If    "${Status1}"=="True"        Click Element            ${Allow_button}
        Sleep    5
        ${Status2}        Run Keyword And Return Status         wait Until Page Contains                 Albums           timeout=20
        Run Keyword If    "${Status2}"=="True"        Click Element            ${Click_album}
        Sleep     5
        ${Status3}        Run Keyword And Return Status         wait Until Page Contains                 Downloads           timeout=20
        Run Keyword If    "${Status3}"=="True"        Click Element            ${Click_Downloads}
        Sleep     10

        Click Element  ${xpath_base} 

        Sleep   15
        ${Status4}        Run Keyword And Return Status         wait Until Page Contains                 Edit Photo           timeout=20
        Run Keyword If    "${Status4}"=="True"        Click Element           ${crop}
        Sleep   20
        
        

        Wait Until Page Contains Element                ${Invite}         timeout=30
        Click Element    ${Invite}
        Sleep   5
        ${Generate_Random_Email}           Generate Random Email
        Wait Until Page Contains Element       ${My_Org_Invite_AddMember}             timeout=50
        Sleep   15
        Input Text        ${My_Org_Invite_AddMember}            ${Generate_Random_Email}

        Click Element       ${Add_More}
        Sleep   5
        ${Generate_Random_Email}           Generate Random Email
        Wait Until Page Contains Element       ${My_Org_Invite_AddMember}             timeout=50
        Sleep   15
        Input Text        ${My_Org_Invite_AddMember}            ${Generate_Random_Email}

        Click Element       ${Add_More}
        Sleep   5
        Click Element       ${Invie_Button_Click}      

Validating_My_Org_Create_post_The_Ark  
         [Documentation]                    Validating My Organisation Create Post screen  
        @{multipletextark}=  Create List              Home                                 
        Wait Until Page Contains     @{multipletextark}
        ${text1}        Run Keyword And Return Status         wait Until Page Contains                  Followers          timeout=20
        Run Keyword If    "${text1}"=="True"        Click Element            ${My_Org_front_Announcement}
        ${text2}        Run Keyword And Return Status         wait Until Page Contains                  Create Post          timeout=20
        Run Keyword If    "${text2}"=="True"        Click Element            ${My_Org_Select member}    
        ${text3}        Run Keyword And Return Status         wait Until Page Contains                  Who can see this post ?          timeout=20
        Run Keyword If    "${text3}"=="True"        Click Element            ${My_Org_member_only}
        # ${text4}        Run Keyword And Return Status         wait Until Page Contains                  Select Category of your post          timeout=20
        # Run Keyword If    "${text4}"=="True"        Click Element           ${My_Org_member_Catergory}         
        ${text5}        Run Keyword And Return Status         wait Until Page Contains                  Enter your announcement text here          timeout=20
        Run Keyword If    "${text5}"=="True"        Input Text    ${My_Org_member_Post}    Hi Everyone!!!! 
        ${text7}        Run Keyword And Return Status         wait Until Page Contains                  Create Post         timeout=20
        Run Keyword If    "${text7}"=="True"        Click Element          ${My_Org_member_Image}

        ${Source3}        Run Keyword And Return Status            Wait Until Page Contains               ${Personal_profile_SelectProfile_word}            timeout=10
        Run Keyword If    "${Source3}"=="True"        Click Element          ${Personal_profile_Image_Allow}
        ${Source4}        Run Keyword And Return Status            Wait Until Page Contains               Albums            timeout=10
        Run Keyword If    "${Source4}"=="True"        Click Element          ${Personal_profile_Image_Album}
        ${Source5}        Run Keyword And Return Status            Wait Until Page Contains               Downloads            timeout=10
        Run Keyword If    "${Source5}"=="True"        Click Element          ${Personal_profile_Album_Downloads}
        ${Source6}        Run Keyword And Return Status            Wait Until Page Contains               Downloads            timeout=10
        Run Keyword If    "${Source6}"=="True"        Click Element          ${Personal_profile_Downloads_Picture}
        Sleep   10
        ${Source7}        Run Keyword And Return Status            Wait Until Page Contains               Edit Photo            timeout=10
        Run Keyword If    "${Source7}"=="True"        Click Element          ${Personal_profile_Downloads_Profilepic}       
        Sleep  5
        ${Source8}        Run Keyword And Return Status            Wait Until Page Contains               Create Post            timeout=10
        Run Keyword If    "${Source8}"=="True"        Click Element          ${My_Org_member_Video}
        Sleep   10
        ${Source9}        Run Keyword And Return Status            Wait Until Page Contains               Albums            timeout=10
        Run Keyword If    "${Source9}"=="True"        Click Element          ${Personal_profile_Image_Album}
        ${Source10}        Run Keyword And Return Status            Wait Until Page Contains               Downloads            timeout=10
        Run Keyword If    "${Source5}"=="True"        Click Element          ${Personal_profile_Album_Downloads}
        ${Source11}        Run Keyword And Return Status            Wait Until Page Contains               Downloads            timeout=10
        Run Keyword If    "${Source11}"=="True"        Click Element          ${My_Org_member_Video_Select}
        ${Source12}        Run Keyword And Return Status            Wait Until Page Contains               Select Thumbnail            timeout=10
        Run Keyword If    "${Source12}"=="True"        Click Element          ${My_Org_member_Video_Select_Thumb}
        ${Source13}        Run Keyword And Return Status            Wait Until Page Contains               Create Post            timeout=10
        Run Keyword If    "${Source13}"=="True"        Click Element          ${My_Org_member_Audio}
        ${Source14}        Run Keyword And Return Status            Wait Until Page Contains               Audio            timeout=10
        Run Keyword If    "${Source14}"=="True"        Click Element          ${My_Org_member_Audio_Select}
        ${text6}        Run Keyword And Return Status         wait Until Page Contains                   Post          timeout=20
        Run Keyword If    "${text6}"=="True"        Click Element            ${My_Org_member_Post_Button}
Validating_The_Post_posted
        Sleep  20
   FOR     ${result}   IN RANGE    0   7
            Swipe   978   2178   1045  892
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==5
    END
            ${xpath_expression} =    Set Variable    //android.widget.TextView[contains(@text, 'Like')]
            ${like_button_count} =    Get Matching Xpath Count    ${xpath_expression}
            Log    Number of 'Like' buttons on the page: ${like_button_count}
            Capture Page Screenshot            ${SCREENSHOT_PATH}
            ${xpath_expression1} =    Set Variable    //android.widget.TextView[contains(@text, 'Comment')]
            ${Comment_button_count} =    Get Matching Xpath Count    ${xpath_expression1}
            Log    Number of 'Comment' buttons on the page: ${Comment_button_count}
            Capture Page Screenshot            ${SCREENSHOT_PATH}
            ${xpath_expression2} =    Set Variable    //android.widget.TextView[contains(@text, 'Share')]
            ${Share_button_count} =    Get Matching Xpath Count    ${xpath_expression2}
            Log    Number of 'Comment' buttons on the page: ${Share_button_count}
            Capture Page Screenshot            ${SCREENSHOT_PATH}
            Wait Until Page Contains Element               ${group_mainfeed_post_like}         timeout=30
            
    FOR     ${result}   IN RANGE    0   7
            Click Element    ${group_mainfeed_post_like} 
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==5
    END 
       Sleep   20
        ${Status3}        Run Keyword And Return Status         Wait Until Page Contains Element       ${group_mainfeed_post_comment}                    timeout=20
        Run Keyword If    "${Status3}"=="True"        Click Element            ${group_mainfeed_post_comment}
       Sleep   10
        ${Status3}        Run Keyword And Return Status         wait Until Page Contains                  ${input}            timeout=20
        Run Keyword If    "${Status3}"=="True"        Click Element           ${input}  
       Sleep   20
     FOR     ${result}   IN RANGE    0   5    
        ${random_comment} =    Generate Random String    10    # Change 10 to the desired length of the comment
        Input Text    ${input}      ${random_comment}
        Click Element    ${post} 
        ${result}   Set Variable    ${result}+1
        Exit For Loop If    ${result}==3
        Sleep    5
     END
        ${Status4}        Run Keyword And Return Status         Wait Until Page Contains Element      ${back}                     timeout=20
        Run Keyword If    "${Status4}"=="True"        Click Element           ${back}  

        Sleep    10
    Sleep  20
   FOR     ${result}   IN RANGE    0   7
            Swipe   1012  550  1011  2219
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==3
    END
            
      FOR     ${result}   IN RANGE    0   7
            Swipe   1007    1747   1033  550
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==3
    END

My_Org_About_The_Ark
    [Documentation]                    Validating My Org About
    @{multipletextark}=  Create List            About     
    Wait Until Page Contains   @{multipletextark}
    ${text1}        Run Keyword And Return Status         wait Until Page Contains                  About          timeout=20
    Run Keyword If    "${text1}"=="True"        Click Element            ${My_Org_About} 
    # Swipe    457    1566    475    502
    # ${text2}        Run Keyword And Return Status         wait Until Page Contains                   Global Admins          timeout=20
    # Wait Until Element Is Visible       ${My_Org_About_Global_Admin}
    # Run Keyword If    "${text2}"=="True"        AppiumLibrary.Get Text            ${My_Org_About_Global_Admin}
    # Comment    Debug: ${My_Org_About_Global_Admin}        
    # Click Element            //android.view.ViewGroup[@resource-id="organization-profile-about-manage-global-admin-btn"]


Count_Elements_With_Dynamic_XPath_GlobalAdmin

       Sleep   10
        ${index}=    Set Variable    0
        ${total_count}=    Set Variable    0

    WHILE    ${TRUE}
        ${xpath}=    Set Variable    //android.view.ViewGroup[@resource-id="member-list-user-card-${index}"]
        ${element_visible}=  Run Keyword And Return Status  Wait Until Element Is Visible  ${xpath}  timeout=10s
        Log  Element Visibility: ${element_visible}
        ${count}=    Get Matching Xpath Count    ${xpath}
        Log    Total number of elements for ${xpath}: ${count}
        ${total_count}=    Evaluate    ${total_count} + ${count}
        Exit For Loop If    '${element_visible}' == 'False'
        ${index}=    Evaluate    ${index} + 1
        
         Log    Total number of elements for all XPath expressions: ${total_count}
         
      END

Count_Elements_With_Dynamic_XPath_GlobalAdmin_Changing_the_Role

           Sleep   10
        ${index}=    Set Variable    0
        ${total_count}=    Set Variable    0

    WHILE    ${TRUE}
        ${xpath}=    Set Variable    //android.view.ViewGroup[@resource-id="change-user-role-icon-btn-${index}"]
        ${element_visible}=  Run Keyword And Return Status  Wait Until Element Is Visible  ${xpath}  timeout=10s
        Log  Element Visibility: ${element_visible}
        ${count}=    Get Matching Xpath Count    ${xpath}
        Log    Total number of elements for ${xpath}: ${count}
        ${total_count}=    Evaluate    ${total_count} + ${count}
        Exit For Loop If    '${element_visible}' == 'False'
        ${index}=    Evaluate    ${index} + 1
        
         Log    Total number of elements for all XPath expressions: ${total_count}
         
      END

    Sleep  10
    ${random_index}=    Evaluate    random.randint(0, ${total_count}-1)
    ${random_xpath}=    Set Variable    //android.view.ViewGroup[@resource-id="change-user-role-icon-btn-${random_index}"]
    ${selected_text}=    Get Text    ${random_xpath}
    Log    Randomly selected text: ${selected_text}
    Sleep   5
    Click Element      ${random_xpath}

Depromote_Admin
    Wait Until Element Is Visible              ${My_Org_About_Admin_global_covrtadmin}
    Click Element   ${My_Org_About_Admin_global_covrtadmin}

           Sleep   10
        ${index}=    Set Variable    0
        ${total_count}=    Set Variable    0

    WHILE    ${TRUE}
        ${xpath}=    Set Variable    //android.view.ViewGroup[@resource-id="member-list-user-card-${index}"]
        ${element_visible}=  Run Keyword And Return Status  Wait Until Element Is Visible  ${xpath}  timeout=10s
        Log  Element Visibility: ${element_visible}
        ${count}=    Get Matching Xpath Count    ${xpath}
        Log    Total number of elements for ${xpath}: ${count}
        ${total_count}=    Evaluate    ${total_count} + ${count}
        Exit For Loop If    '${element_visible}' == 'False'
        ${index}=    Evaluate    ${index} + 1
        
         Log    Total number of elements for all XPath expressions: ${total_count}
         
      END
      Sleep  5
Navigation_Global
      Wait Until Page Contains Element  ${Global_admi_back}
      Click Element       ${Global_admi_back}

Validatin_Inside_About
    Sleep   10
    Swipe    513    2015    524    387
    ${text3}        Run Keyword And Return Status         wait Until Page Contains                  About          timeout=20
    Run Keyword If    "${text3}"=="True"        Click Element            ${My_Org_About_Edit}
    ${text4}        Run Keyword And Return Status         wait Until Page Contains                  Edit about          timeout=20
    Run Keyword If    "${text4}"=="True"        Clear Text            //android.widget.EditText[@text="Testing Process"]
    ${text5}        Run Keyword And Return Status         wait Until Page Contains                  Edit about          timeout=20
    Run Keyword If    "${text5}"=="True"        Input Text            //android.widget.EditText            Automation Setup!!!!Setup Suite
    ${text6}        Run Keyword And Return Status         Wait Until Page Contains Element                ${About_save}          timeout=20
    Run Keyword If    "${text6}"=="True"        Click Element            ${About_save} 
    Sleep    10

Promote_Global
    Sleep    10
    Wait Until Element Is Visible        //android.widget.TextView[@text="Convert to Global Admin"]
    Click Element   		//android.widget.TextView[@text="Convert to Global Admin"]

Validaing_Admin
    Sleep  10
    Swipe    513    2015    524    387
    ${text7}        Run Keyword And Return Status         Wait Until Page Contains Element                  ${My_Org_About_Admin_See_all}          timeout=20
    Run Keyword If    "${text7}"=="True"        Click Element            ${My_Org_About_Admin_See_all}

Validating_Member
      Sleep  10
      Swipe           513     2015    524    387
    ${text9}        Run Keyword And Return Status         Wait Until Page Contains Element                  ${My_Org_About_Member_See_all}          timeout=20
    Run Keyword If    "${text9}"=="True"        Click Element            ${My_Org_About_Member_See_all} 

My_Org_Contact_The_Ark
    [Documentation]                    Validating My Org Contact
    @{multipletextark}=  Create List        Contact     
    Wait Until Page Contains       @{multipletextark}
    ${text1}        Run Keyword And Return Status         wait Until Page Contains                  Contact          timeout=20
    Run Keyword If    "${text1}"=="True"        Click Element           //android.widget.TextView[@text="Contact"]
      Swipe    457    1566    475    502
    ${text2}        Run Keyword And Return Status         wait Until Page Contains                  Contact          timeout=20
    Run Keyword If    "${text2}"=="True"        Click Element            ${My_Org_Contact_Edit}
    ${text3}        Run Keyword And Return Status         wait Until Page Contains                  Email          timeout=20
    Run Keyword If    "${text3}"=="True"        Get Text                ${My_Org_Contact_Email}
    ${text4}        Run Keyword And Return Status         wait Until Page Contains                  Phone          timeout=20
    Run Keyword If    "${text4}"=="True"        Get Text                ${My_Org_Contact_Phone}
    ${text5}        Run Keyword And Return Status         wait Until Page Contains                  Website          timeout=20
    Run Keyword If    "${text5}"=="True"        Get Text               ${My_Org_Contact_Website}
    ${text6}        Run Keyword And Return Status         wait Until Page Contains                  State          timeout=20
    Run Keyword If    "${text6}"=="True"        Get Text                ${My_Org_Contact_state}
    ${text7}        Run Keyword And Return Status         wait Until Page Contains                  Country          timeout=20
    Run Keyword If    "${text7}"=="True"        Get Text                ${My_Org_Contact_Contry}
    ${text8}        Run Keyword And Return Status         wait Until Page Contains                  City          timeout=20
    Run Keyword If    "${text8}"=="True"        Get Text                ${My_Org_Contact_city}
    ${text9}        Run Keyword And Return Status         Wait Until Page Contains Element                ${My_Org_Contact_Save}          timeout=20
    Run Keyword If    "${text9}"=="True"        Click Element           ${My_Org_Contact_Save}

My_Org_Followers_The_Ark
    [Documentation]                    Validating My Org Followers
    @{multipletextark}=  Create List     Followers
    Wait Until Page Contains        @{multipletextark}
    Sleep  10
        ${Source}        Run Keyword And Return Status         Wait Until Page Contains Element                 ${My_Org_Foll}           timeout=20
        Run Keyword If    "${Source}"=="True"        Click Element    ${My_Org_Foll}
        Swipe    457    1566    475    502
        Sleep   10
        ${index}=    Set Variable    0
        ${total_count}=    Set Variable    0

    WHILE    ${TRUE}
        ${xpath}=    Set Variable    //android.view.ViewGroup[@resource-id="org-profile-followers-user-card-${index}"]
        ${element_visible}=  Run Keyword And Return Status  Wait Until Element Is Visible  ${xpath}  timeout=10s
        Log  Element Visibility: ${element_visible}
        ${count}=    Get Matching Xpath Count    ${xpath}
        Log    Total number of elements for ${xpath}: ${count}
        ${total_count}=    Evaluate    ${total_count} + ${count}
        Exit For Loop If    '${element_visible}' == 'False'
        ${index}=    Evaluate    ${index} + 1
        
         Log    Total number of elements for all XPath expressions: ${total_count}
         
      END



   


Generate_Random_Email
    [Documentation]     Keywords for generating new Email
    ${random_string}    Generate Random String    8    [NUMBERS]
    ${password}    Set Variable    email${random_string}@gmail.com
    [Return]    ${password}   