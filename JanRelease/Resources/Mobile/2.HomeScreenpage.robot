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



Resource     ${CURDIR}${/}..//..//Variables//Mobile//2.HomeScreenpage.robot
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
Validating_HomeScreen_Page
      
       [Documentation]                    Validating Home screen
        
        @{Validatingmultipletextark}=  Create List       Global        News       
        Page Should Contain Text    @{Validatingmultipletextark}
        Sleep    2
        ${Status1}        Run Keyword And Return Status            Wait Until Element Is Visible           ${Main_page_Searchbar}            timeout=10
        Run Keyword If    "${Status1}"=="True"        Click Element    ${Main_page_Searchbar}
        Sleep   5
        ${Status2}        Run Keyword And Return Status            Wait Until Element Is Visible            ${input}            timeout=10
        Run Keyword If    "${Status2}"=="True"        Input Text          ${input}            ${input_data} 
        Sleep    2
        ${Status3}        Run Keyword And Return Status            Wait Until Element Is Visible            ${Main_page_search_all}            timeout=10
        Run Keyword If    "${Status3}"=="True"         Click Element     ${Main_page_search_organisation}
        Sleep    2
        ${Status4}        Run Keyword And Return Status            Wait Until Element Is Visible            ${Main_page_search_organisation}           timeout=10
        Run Keyword If    "${Status4}"=="True"         Click Element     ${Main_Home_Tab_Search_select org}
        Sleep  2
        ${Status5}        Run Keyword And Return Status            Page Should Contain Text    St. Mary's
        Run Keyword If    "${Status5}"=="True"         Click Element     ${Main_Home_select org_Navigation}
        Sleep  7
        Click Element     ${Main_Search_Button_Navigate}

        ###########Notification#########
        Sleep  7
        @{Validatingmultipletextark}=  Create List       Global        News       
        Page Should Contain Text    @{Validatingmultipletextark}
        Sleep    2
        ${Status6}        Run Keyword And Return Status            Wait Until Element Is Visible          ${Main_page_Notificationbar}           timeout=10
        Run Keyword If    "${Status6}"=="True"        Click Element    ${Main_page_Notificationbar}
        Sleep   5
        @{ValidatingRegisterPageText}=  Create List        Mark all as read                             
        Page Should Contain Text    @{ValidatingRegisterPageText}
        FOR     ${result}   IN RANGE    0   10
            Swipe   1073     2146   1046    543
            Start Screen Recording   200
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==7
            Stop Screen Recording    Notification
        END

        Sleep  5

        FOR     ${result}   IN RANGE    0   10
            Swipe   1022     851   1018    2160
            Start Screen Recording   200
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==7
            Stop Screen Recording    Notification1
        END

        ${Status7}        Run Keyword And Return Status            Page Should Contain Text         Mark all as read 
        Run Keyword If    "${Status7}"=="True"        Click Element    ${Main_page_Notificationbar_allread}
        Sleep   5

        Click Element    ${Main_page_Notificationbar_back}

Validating_MainFeedPage_The_Ark
        [Documentation]                    Validating Main Feed Page screen
         @{Validatingmultipletextark}=  Create List     Global      Private       
        Page Should Contain Text        @{Validatingmultipletextark}
        Sleep    2
        Click Element            ${Main_page_Private_Icon}
        Sleep    5
        Click Element            ${Main_page_MyOrg_Icon}
        Sleep    5 
        Click Element            ${Main_page_News_Icon}
        Sleep    5
        Click Element            ${Main_page_More_Option}
        




