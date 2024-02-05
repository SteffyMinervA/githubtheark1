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





Resource     ${CURDIR}${/}..//..//Variables//Mobile//6.Groups.robot
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

 Validating_My_Org_CreateGroup_The_Ark        
        Sleep    10       
        ${text1}        Run Keyword And Return Status         wait Until Page Contains                   Create Group           timeout=20
        Run Keyword If    "${text1}"=="True"        Click Element            ${My_Org_Create_Group}
        ${text2}        Run Keyword And Return Status         wait Until Page Contains                  Browse           timeout=20
        Run Keyword If    "${text2}"=="True"        Click Element            ${Create_Group_Browser}
        ${text3}        Run Keyword And Return Status         wait Until Page Contains                  Allow           timeout=20
        Run Keyword If    "${text3}"=="True"        Click Element            ${Create_Group_Browser_Allow}
        ${text4}        Run Keyword And Return Status            Wait Until Page Contains               Albums            timeout=10
        Run Keyword If    "${text4}"=="True"        Click Element          ${Personal_profile_Image_Album}
        ${text5}        Run Keyword And Return Status            Wait Until Page Contains               Downloads            timeout=10
        Run Keyword If    "${text5}"=="True"        Click Element          ${Personal_profile_Album_Downloads}
        ${text6}        Run Keyword And Return Status            Wait Until Page Contains               Downloads            timeout=10
        Run Keyword If    "${text6}"=="True"        Click Element          ${Personal_profile_Downloads_Picture}
        ${text7}        Run Keyword And Return Status            Wait Until Page Contains               Edit Photo            timeout=10
        Run Keyword If    "${text7}"=="True"        Click Element          ${Create_Group_Browser_Ok}
        Sleep  5
                

        ${random_comment} =    Generate Random String    10 
        ${text8}        Run Keyword And Return Status            Wait Until Page Contains               Group Name            timeout=10
        Run Keyword If    "${text8}"=="True"        Input Text    ${My_Org_Create_Group_Name}    ${random_comment}
        ${text9}        Run Keyword And Return Status            Wait Until Page Contains               Description            timeout=10
        Run Keyword If    "${text9}"=="True"        Input Text    ${My_Org_Create_Group_Description}         ${random_comment}
        ${text10}        Run Keyword And Return Status            Wait Until Page Contains               Add Moderator            timeout=10
        Run Keyword If    "${text10}"=="True"        Click Element          ${My_Org_Create_Group_AddModerator}

       Sleep   10
        ${index}=    Set Variable    0
        ${total_count}=    Set Variable    0

    WHILE    ${TRUE}
        ${xpath}=    Set Variable    (//android.widget.TextView[@text="󰄱"])[${index}]
        ${element_visible}=  Run Keyword And Return Status  Wait Until Element Is Visible  ${xpath}  timeout=10s
        Log  Element Visibility: ${element_visible}
        ${count}=    Get Matching Xpath Count    ${xpath}
        Log    Total number of elements for ${xpath}: ${count} 
        Exit For Loop If    '${element_visible}' == 'False'
      END
    Sleep  10
    ${random_index}=    Evaluate    random.randint(0, ${count} -1)
    Sleep   5
    ${random_xpath}=    Set Variable    (//android.widget.TextView[@text="󰄱"])[${index}]
    ${selected_text}=    Get Text    ${random_xpath}
    Log    Randomly selected text: ${selected_text}
    Sleep   5
    Click Element      ${random_xpath}


    
        ${text13}        Run Keyword And Return Status            Wait Until Page Contains               Moderator          timeout=10
        Run Keyword If    "${text13}"=="True"        Click Element          	//android.view.ViewGroup[@resource-id="select-moderator--for-group-action-btn"]
       Sleep  10
       Click Element        ${My_Org_Create_Group_Create_Button}