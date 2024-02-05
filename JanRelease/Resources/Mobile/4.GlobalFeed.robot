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





Resource     ${CURDIR}${/}..//..//Variables//Mobile//4.GlobalFeed.robot
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
Validating_Global_Feed
        [Documentation]                    Validating Global Feed
        @{Validatingmultipletextark}=  Create List        Global     Private            
        Page Should Contain Text       @{Validatingmultipletextark}
        Sleep    2
        Click Element            ${Global} 
        ${Status1}        Run Keyword And Return Status            Wait Until Page Contains               Global            timeout=10
        Run Keyword If    "${Status1}"=="True"        Click Element    ${Global_all}
        Sleep  20
        ${Status2}        Run Keyword And Return Status            Wait Until Page Contains               All         timeout=10
        Run Keyword If    "${Status2}"=="True"        Get Text         ${Global_feedone}
        Sleep   10
         Wait Until Page Contains Element                ${Global_Likeone}         timeout=30
    FOR     ${result}   IN RANGE    0   7
            Click Element    ${Global_Likeone}
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==5
    END 
       Sleep   20
        ${Status3}        Run Keyword And Return Status         Wait Until Page Contains Element       ${Global_Commentone}                    timeout=20
        Run Keyword If    "${Status3}"=="True"        Click Element            ${Global_Commentone}
       Sleep   10
        ${Status3}        Run Keyword And Return Status         wait Until Page Contains                  ${Global_Commentinput}          timeout=20
        Run Keyword If    "${Status3}"=="True"        Click Element           ${Global_Commentinput}
       Sleep   20
     FOR     ${result}   IN RANGE    0   5    
        ${random_comment} =    Generate Random String    10    # Change 10 to the desired length of the comment
        Input Text    ${Global_Commentinput}    ${random_comment}
        Click Element    ${Global_postcomment}
        ${result}   Set Variable    ${result}+1
        Exit For Loop If    ${result}==3
        Sleep    5
     END
        ${Status4}        Run Keyword And Return Status         Wait Until Page Contains Element      ${Global_Goback}                     timeout=20
        Run Keyword If    "${Status4}"=="True"        Click Element            ${Global_Goback}  

        Sleep    10

Swiping_GlobalFeed_Slide_The_Ark
        [Documentation]        Swipe left
        @{ValidatingRegisterPageText}=  Create List        Global                             
        Page Should Contain Text    @{ValidatingRegisterPageText}
        FOR     ${result}   IN RANGE    0   8
            Swipe   1056     1892   1048    744
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==6
        END        
        Sleep   20
        @{ValidatingRegisterPageText}=  Create List        Global                             
        Page Should Contain Text    @{ValidatingRegisterPageText}
        FOR     ${result}   IN RANGE    0   8
            Swipe   1041     349   1041    2026
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==6
        END 



Validating_Comics_Feed
        [Documentation]                    Validating Global Feed
        @{Validatingmultipletextark}=  Create List        Comics     Global            
        Page Should Contain Text       @{Validatingmultipletextark}
        Sleep    2
        Click Element            ${Comics} 
        ${Status2}        Run Keyword And Return Status            Wait Until Page Contains               Comics         timeout=10
        Run Keyword If    "${Status2}"=="True"        Get Text         ${Comics_feedone}
        Sleep   10
         Wait Until Page Contains Element                ${Comicslike}         timeout=30
    FOR     ${result}   IN RANGE    0   7
            Click Element    ${Comicslike}
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==5
    END 
       Sleep   20
        ${Status3}        Run Keyword And Return Status         Wait Until Page Contains Element       ${Comics_Comment}                    timeout=20
        Run Keyword If    "${Status3}"=="True"        Click Element            ${Comics_Comment}
        Sleep   10
        ${Status3}        Run Keyword And Return Status         wait Until Page Contains                  ${Comics_Comment_input}           timeout=20
        Run Keyword If    "${Status3}"=="True"        Click Element           ${Comics_Comment_input} 
       Sleep   20
     FOR     ${result}   IN RANGE    0   5    
        ${random_comment} =    Generate Random String    10    # Change 10 to the desired length of the comment
        Input Text    ${Comics_Comment_input}     ${random_comment}
        Sleep  10
        Click Element    ${Comics_Comment_post}
        ${result}   Set Variable    ${result}+1
        Exit For Loop If    ${result}==3
        Sleep    5
     END
        ${Status4}        Run Keyword And Return Status         Wait Until Page Contains Element      ${Comics_goback}                     timeout=20
        Run Keyword If    "${Status4}"=="True"        Click Element            ${Comics_goback}  

        Sleep    10

Swiping_Comics_Slide_The_Ark
        [Documentation]        Swipe left
        @{ValidatingRegisterPageText}=  Create List        Comics                             
        Page Should Contain Text    @{ValidatingRegisterPageText}
        FOR     ${result}   IN RANGE    0   2
            Swipe   981    2022    996    1164
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==1
        END        
        Sleep   20
        @{ValidatingRegisterPageText}=  Create List        Comics                             
        Page Should Contain Text    @{ValidatingRegisterPageText}
        FOR     ${result}   IN RANGE    0   2
            Swipe   1041     349   1041    2026
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==1
        END 

Validating_Entertainment_FeedPage
        Sleep   30
        Click Element                  ${Entertainment}    


Validating_NewCategory_FeedPage
        [Documentation]              Validating  Newcategory 
        Sleep  20 
        Click Element                  ${New_Category} 

Swipe_The_Slide_Above_All_Tab
        [Documentation]              Validating  Swiping the slide
        Swipe      1022   342    89    361 


Validating_Science&Fiction_Feed
        [Documentation]                    Validating Global Feed
        @{Validatingmultipletextark}=  Create List        Society      Technology          
        Page Should Contain Text       @{Validatingmultipletextark}
        Sleep    2
        Click Element            ${Science_fiction} 
        ${Status2}        Run Keyword And Return Status            Wait Until Page Contains               Society         timeout=10
        Run Keyword If    "${Status2}"=="True"        Get Text         ${Science_feedone}
        Sleep   10

        Swipe    981  2022  985   1193

        Sleep    10

         Wait Until Page Contains Element                ${Science_fiction_like}         timeout=30
    FOR     ${result}   IN RANGE    0   7
            Click Element    ${Science_fiction_like}
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==5
    END 
       Sleep   20

        ${Status3}        Run Keyword And Return Status         Wait Until Page Contains Element       ${Science_fiction_Comment}                    timeout=20
        Run Keyword If    "${Status3}"=="True"        Click Element            ${Science_fiction_Comment}
        Sleep   10
        ${Status3}        Run Keyword And Return Status         wait Until Page Contains                 ${Science_fiction_Comment_input}          timeout=20
        Run Keyword If    "${Status3}"=="True"        Click Element           ${Science_fiction_Comment_input}
       Sleep   20
     FOR     ${result}   IN RANGE    0   5    
        ${random_comment} =    Generate Random String    10    # Change 10 to the desired length of the comment
        Input Text    ${Science_fiction_Comment_input}     ${random_comment}
        Click Element    ${Science_fiction_Comment_post}
        ${result}   Set Variable    ${result}+1
        Exit For Loop If    ${result}==3
        Sleep    5
     END
        ${Status4}        Run Keyword And Return Status         Wait Until Page Contains Element      ${Science_fiction_Comment_goback}                     timeout=20
        Run Keyword If    "${Status4}"=="True"        Click Element            ${Science_fiction_Comment_goback} 

        Sleep    10




Validating_Society_Feed
        [Documentation]                    Validating Global Feed
        @{Validatingmultipletextark}=  Create List        Society      Technology          
        Page Should Contain Text       @{Validatingmultipletextark}
        Sleep    2
        Click Element            ${Society}  
        ${Status2}        Run Keyword And Return Status            Wait Until Page Contains               Society         timeout=10
        Run Keyword If    "${Status2}"=="True"        Get Text         ${Society_feedone}
        Sleep   10

        Swipe    981  2022  985   1193

        Sleep    10
         Wait Until Page Contains Element                ${Society_like}         timeout=30
    FOR     ${result}   IN RANGE    0   7
            Click Element    ${Society_like}
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==5
    END 
       Sleep   20
        ${Status3}        Run Keyword And Return Status         Wait Until Page Contains Element      ${Society_comment}                   timeout=20
        Run Keyword If    "${Status3}"=="True"        Click Element            ${Society_comment}
        Sleep   10
        ${Status3}        Run Keyword And Return Status         wait Until Page Contains                 ${Society_comment_input}         timeout=20
        Run Keyword If    "${Status3}"=="True"        Click Element           ${Society_comment_input}
       Sleep   20
     FOR     ${result}   IN RANGE    0   5    
        ${random_comment} =    Generate Random String    10    # Change 10 to the desired length of the comment
        Input Text    ${Society_comment_input}     ${random_comment}
        Click Element    ${Society_comment_post}
        ${result}   Set Variable    ${result}+1
        Exit For Loop If    ${result}==3
        Sleep    5
     END
        ${Status4}        Run Keyword And Return Status         Wait Until Page Contains Element      ${Society_comment_goback}                     timeout=20
        Run Keyword If    "${Status4}"=="True"        Click Element            ${Society_comment_goback} 

        Sleep    10




Validating_Technology_Feed
        [Documentation]                    Validating Global Feed
        @{Validatingmultipletextark}=  Create List        Society      Technology          
        Page Should Contain Text       @{Validatingmultipletextark}
        Sleep    2
        Click Element            ${Technology} 
        ${Status2}        Run Keyword And Return Status            Wait Until Page Contains               Society         timeout=10
        Run Keyword If    "${Status2}"=="True"        Get Text         ${Technology_feedone}
        Sleep   10

         Swipe    981  2022  985   1193

        Sleep    10
         Wait Until Page Contains Element                ${Technology_like}         timeout=30
    FOR     ${result}   IN RANGE    0   7
            Click Element    ${Technology_like}
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==5
    END 
       Sleep   20
        ${Status3}        Run Keyword And Return Status         Wait Until Page Contains Element      ${Technology_comment}                  timeout=20
        Run Keyword If    "${Status3}"=="True"        Click Element           ${Technology_comment}
        Sleep   10
        ${Status3}        Run Keyword And Return Status         wait Until Page Contains                ${Technology_comment_input}        timeout=20
        Run Keyword If    "${Status3}"=="True"        Click Element           ${Technology_comment_input}
       Sleep   20
     FOR     ${result}   IN RANGE    0   5    
        ${random_comment} =    Generate Random String    10    # Change 10 to the desired length of the comment
        Input Text    ${Technology_comment_input}     ${random_comment}
        Click Element    ${Technology_comment_post}
        ${result}   Set Variable    ${result}+1
        Exit For Loop If    ${result}==3
        Sleep    5
     END
        ${Status4}        Run Keyword And Return Status         Wait Until Page Contains Element     ${Technology_comment_goback}                     timeout=20
        Run Keyword If    "${Status4}"=="True"        Click Element           ${Technology_comment_goback}

        Sleep    10

