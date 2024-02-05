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





Resource     ${CURDIR}${/}..//..//Variables//Mobile//7.New&more.robot
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

Validating_The_News_Icon

        [Documentation]                    Validating New Feed Page screen
         @{Validatingmultipletextark}=  Create List               Comment        
        Wait Until Page Contains       @{Validatingmultipletextark}
        Sleep    5 
        Click Element            ${Main_page_News_Icon}
Validating_Horizontal_News
 

         Wait Until Page Contains Element                ${Main_page_News_Icon}        timeout=30
    FOR     ${result}   IN RANGE    0   5
            Click Element    ${news_liked}
            Sleep   5
            Click Element         ${news_saved}
            Sleep    5
            Swipe     954    943    58    936
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==3
    END 

    Sleep   10
Swiping_News_Slide_The_Ark
        [Documentation]        Swipe left
        @{ValidatingRegisterPageText}=  Create List        News                 
        Page Should Contain Text    @{ValidatingRegisterPageText}
        FOR     ${result}   IN RANGE    0   10
           Capture Page Screenshot     C:\Users\Steffy\Pictures\Saved Pictures
            Swipe   476     2056   483    599
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==7
        END
More_Options
        Sleep    5

        ${Text1}        Run Keyword And Return Status         Wait Until Page Contains Element    ${Main_page_More_Option}       timeout=20
        Run Keyword If    "${Text1}"=="True"              Click Element            ${Main_page_More_Option}
        Sleep   10
        ${Text21}        Run Keyword And Return Status         Wait Until Page Contains Element    ${More_Option_PrayerDiary}        timeout=20
        Run Keyword If    "${Text21}"=="True"              Click Element           ${More_Option_PrayerDiary} 
        Sleep   10
        ${Text2}        Run Keyword And Return Status         Wait Until Page Contains Element    ${Prayer_list}       timeout=20
        Run Keyword If    "${Text2}"=="True"              Click Element            ${Prayer_list}
        Sleep   10     
        ${Text3}        Run Keyword And Return Status         Wait Until Page Contains Element    ${Prayer_list_getlist}       timeout=20
        Run Keyword If    "${Text3}"=="True"             Get Text          ${Prayer_list_getlist}
        Sleep   10 
        ${Text4}        Run Keyword And Return Status         Wait Until Page Contains Element    ${Prayer_list_Savedreq}       timeout=20
        Run Keyword If    "${Text4}"=="True"              Click Element          ${Prayer_list_Savedreq}
        Sleep   10 
        ${Text5}        Run Keyword And Return Status         Wait Until Page Contains Element    ${Prayer_list_Savedreq_gettext}        timeout=20
        Run Keyword If    "${Text5}"=="True"              Get Text          ${Prayer_list_Savedreq_gettext} 
        Sleep   10
        ${Text6}        Run Keyword And Return Status         Wait Until Page Contains Element   ${answers_prayer}         timeout=20
        Run Keyword If    "${Text6}"=="True"              Click Element         ${answers_prayer}  
        Sleep   10
        ${Text7}        Run Keyword And Return Status         Wait Until Page Contains Element   ${answers_prayer_text}         timeout=20
        Run Keyword If    "${Text7}"=="True"              Get Text        ${answers_prayer_text}
        Sleep   10
        ${Text8}        Run Keyword And Return Status         Wait Until Page Contains Element   ${prayer_back}          timeout=20
        Run Keyword If    "${Text8}"=="True"              Click Element        ${prayer_back} 
         Sleep   10
        ${Text9}        Run Keyword And Return Status         Wait Until Page Contains Element  ${More_Option_Mygroups}          timeout=20
        Run Keyword If    "${Text9}"=="True"              Click Element        ${More_Option_Mygroups} 
         Sleep   10
        ${Text10}        Run Keyword And Return Status         Wait Until Page Contains Element  ${More_Option_Mygroups_holepage}          timeout=20
        Run Keyword If    "${Text10}"=="True"              Get Text        ${More_Option_Mygroups_holepage}
         Sleep   10
        ${Text11}        Run Keyword And Return Status         Wait Until Page Contains Element  ${MYGROUPS_back}         timeout=20
        Run Keyword If    "${Text11}"=="True"              Click Element        ${MYGROUPS_back}
         Sleep   10
        ${Text12}        Run Keyword And Return Status         Wait Until Page Contains Element  ${More_Option_PendingInvites}        timeout=20
        Run Keyword If    "${Text12}"=="True"              Click Element      ${More_Option_PendingInvites}
         Sleep   10
        ${Text13}        Run Keyword And Return Status         Wait Until Page Contains Element  ${More_Option_PendingInvites}        timeout=20
        Run Keyword If    "${Text13}"=="True"              Click Element      ${More_Option_PendingInvites}
         Sleep   10
        ${Text14}        Run Keyword And Return Status         Wait Until Page Contains Element  ${Pending_Invites_back}       timeout=20
        Run Keyword If    "${Text14}"=="True"              Click Element      ${Pending_Invites_back}
         Sleep   10
        ${Text15}        Run Keyword And Return Status         Wait Until Page Contains Element  ${More_Option_GroupRequest}       timeout=20
        Run Keyword If    "${Text15}"=="True"              Click Element      ${More_Option_GroupRequest} 
         Sleep   10
        ${Text16}        Run Keyword And Return Status         Wait Until Page Contains Element  ${More_Option_GroupRequest}       timeout=20
        Run Keyword If    "${Text16}"=="True"              Click Element     ${More_Option_GroupRequest_back}