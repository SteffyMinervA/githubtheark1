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


Resource     ${CURDIR}${/}..//..//Variables//Mobile//3.MyProfile.robot
Resource     ${CURDIR}${/}..//..//Variables//Mobile//Configuration.robot
Resource     ${CURDIR}${/}..//..//Resources//Mobile//3.MyProfile.robot

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
        Click Element        ${ProfileArk_Image}
Validating_EditProfile_Profile_Picture_The_Ark
        [Documentation]                     Edit Profile Images on profile         
        @{PageText}=  Create List             Edit Profile        My Posts        
        Page Should Contain Text       @{PageText}
        ${Source}        Run Keyword And Return Status         wait Until Page Contains                  My Profile           timeout=20
        Run Keyword If    "${Source}"=="True"        Get Text          ${My_Profile_UserName}
        ${Source1}        Run Keyword And Return Status         wait Until Page Contains                  My Profile           timeout=20
        Run Keyword If    "${Source1}"=="True"        Get Text           ${My_Profile_Country}
        ${Source2}        Run Keyword And Return Status         wait Until Page Contains                  Edit Profile           timeout=20
        Run Keyword If    "${Source2}"=="True"        Click Element            ${My_Profile_EditProfile}
        ${Source3}        Run Keyword And Return Status            Wait Until Page Contains               Profile Picture            timeout=10
        Run Keyword If    "${Source3}"=="True"        Click Element          ${Personal_profile_Edit}
        ${Source4}        Run Keyword And Return Status            Wait Until Page Contains               Select profile picture            timeout=10
        Run Keyword If    "${Source4}"=="True"        Click Element          ${Personal_profile_SelectProfile}
        ${Source5}        Run Keyword And Return Status            Wait Until Page Contains               ${Personal_profile_SelectProfile_word}            timeout=10
        Run Keyword If    "${Source5}"=="True"        Click Element          ${Personal_profile_Image_Allow}
        ${Source6}        Run Keyword And Return Status            Wait Until Page Contains               Albums            timeout=10
        Run Keyword If    "${Source6}"=="True"        Click Element          ${Personal_profile_Image_Album}
        ${Source7}        Run Keyword And Return Status            Wait Until Page Contains               Downloads            timeout=10
        Run Keyword If    "${Source7}"=="True"        Click Element          ${Personal_profile_Album_Downloads}
        ${Source8}        Run Keyword And Return Status            Wait Until Page Contains               Downloads            timeout=10
        Run Keyword If    "${Source8}"=="True"        Click Element          ${Personal_profile_Downloads_Picture}
        ${Source9}        Run Keyword And Return Status            Wait Until Page Contains               Edit Photo            timeout=10
        Run Keyword If    "${Source9}"=="True"        Click Element          ${Personal_profile_Downloads_Profilepic}       
        Sleep  5

Validating_About_The_Ark  
        [Documentation]                    Validating the ark
        Sleep  30      
        @{Validating}=  Create List            About        Contact                
        Page Should Contain Text        @{Validating}  
        ${Text}        Run Keyword And Return Status         wait Until Page Contains                  About           timeout=20
        Run Keyword If    "${Text}"=="True"        Click Element            ${Personal_profile_About_Edit}
        Sleep  10

Validating_Edit_The_Ark       
        [Documentation]                    Validating Edit the data About the ark
        Sleep  5      
        @{ValidatingData}=  Create List            Date-of-Birth     Gender       
        Page Should Contain Text       @{ValidatingData}
        ${Text}        Run Keyword And Return Status         wait Until Page Contains                 First Name           timeout=20
        Run Keyword If    "${Text}"=="True"        Clear Text            ${Personal_profile_Frst}
        ${Text1}        Run Keyword And Return Status         wait Until Page Contains                 First Name           timeout=20
        Run Keyword If    "${Text1}"=="True"        Input Text            ${Personal_profile_Frst}       ${Personal_profile_FirstName}
        ${Text2}        Run Keyword And Return Status         wait Until Page Contains                 Middle Name           timeout=20
        Run Keyword If    "${Text2}"=="True"        Clear Text            ${Personal_profile_Middle} 
        ${Text3}        Run Keyword And Return Status         wait Until Page Contains                 First Name           timeout=20
        Run Keyword If    "${Text3}"=="True"        Input Text            ${Personal_profile_Middle}       ${Personal_profile_MiddleName}
        ${Text4}        Run Keyword And Return Status         wait Until Page Contains                 Last Name           timeout=20
        Run Keyword If    "${Text4}"=="True"        Clear Text            ${Personal_profile_Last}
        ${Text5}        Run Keyword And Return Status         wait Until Page Contains                 Last Name           timeout=20
        Run Keyword If    "${Text5}"=="True"        Input Text            ${Personal_profile_Last}       ${Personal_profile_LastName}
        ${Text6}        Run Keyword And Return Status         wait Until Page Contains                 Date-of-Birth           timeout=20
        Run Keyword If    "${Text6}"=="True"        Get Text            ${Personal_profile_Dob}
        ${Text7}        Run Keyword And Return Status         wait Until Page Contains                 Save           timeout=20
        Run Keyword If    "${Text7}"=="True"        Click Element           ${Personal_profile_Save}    
        Sleep    10

Validating_Date_of_birth
        ${Text8}        Run Keyword And Return Status         wait Until Page Contains                 About          timeout=20
        Run Keyword If    "${Text8}"=="True"        Click Element           ${Personal_profile_dob_publicicon}
        Sleep    10
        ${Text9}        Run Keyword And Return Status         wait Until Page Contains                 Public          timeout=20
        Run Keyword If    "${Text9}"=="True"        Click Element           ${Personal_profile_dob_public} 
       Sleep    10
        ${Text10}        Run Keyword And Return Status         wait Until Page Contains                 Public           timeout=20
        Run Keyword If    "${Text10}"=="True"        Click Element           ${Personal_profile_dob_closebutton} 
        Sleep    10
        ${Text11}        Run Keyword And Return Status         wait Until Page Contains                 About          timeout=20
        Run Keyword If    "${Text11}"=="True"        Click Element           ${Personal_profile_dob_publicicon}
        Sleep    10
        ${Text12}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
        Run Keyword If    "${Text12}"=="True"        Click Element           ${Personal_profile_dob_organisation} 
        ${Text121}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
        Run Keyword If    "${Text121}"=="True"        Click Element           ${Personal_profile_dob_closebutton}       
        Sleep    10
        ${Text13}        Run Keyword And Return Status         wait Until Page Contains                 OK            timeout=20
        Run Keyword If    "${Text13}"=="True"        Click Element           ${Choose_any_org_Ok}
        Sleep    10
        ${Text14}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
        Run Keyword If    "${Text14}"=="True"        Click Element           ${Personal_profile_dob_organisation_Selectall} 
        Sleep    10
        ${Text15}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
        Run Keyword If    "${Text15}"=="True"        Click Element           ${Personal_profile_dob_closebutton} 
        Sleep    10
        ${Text16}        Run Keyword And Return Status         wait Until Page Contains                 About          timeout=20
        Run Keyword If    "${Text16}"=="True"        Click Element           ${Personal_profile_dob_orgicon}
        Sleep    10
        ${Text17}        Run Keyword And Return Status         wait Until Page Contains                 Private          timeout=20
        Run Keyword If    "${Text17}"=="True"        Click Element           ${Personal_profile_dob_private}    
        Sleep    10    
        ${Text18}        Run Keyword And Return Status         wait Until Page Contains                 Private           timeout=20
        Run Keyword If    "${Text18}"=="True"        Click Element           ${Personal_profile_dob_closebutton}
    
Give Random Phone Number
    ${random_phone_number}=  Generate Random Phone Number
Generate Random Phone Number
    ${area_code}=  Evaluate  random.randint(999, 99999)
    ${prefix}=  Evaluate  random.randint(5000, 9999)
    ${line_number}=  Evaluate  random.randint(15000, 90000)
    ${random_phone_number}=  Set Variable   91${area_code}${prefix}${line_number}
    [Return]  ${random_phone_number}

Validating_Contact_The_Ark
        [Documentation]                    Ensure the Contact
        ${random_phone_number}                     Generate Random Phone Number
        Sleep  5      
        @{Validating}=  Create List            Contact       Relationship              
        Page Should Contain Text        @{Validating} 
        ${Data}        Run Keyword And Return Status         wait Until Page Contains                Contact           timeout=20
        Run Keyword If    "${Data}"=="True"        Click Element       ${Personal_profile_Contact_Edit}
        ${Data1}        Run Keyword And Return Status         wait Until Page Contains                Contact           timeout=40
        Run Keyword If    "${Data1}"=="True"        Clear Text           ${Personal_profile_Number}
        ${Data2}        Run Keyword And Return Status         wait Until Page Contains                Contact           timeout=40
        Run Keyword If    "${Data2}"=="True"        Input Text           ${Personal_profile_Number}         ${random_phone_number}   
        ${Data3}        Run Keyword And Return Status         wait Until Page Contains                Email           timeout=20
        Run Keyword If    "${Data3}"=="True"        Get Text           ${Personal_profile_Email}
        ${Data4}        Run Keyword And Return Status         wait Until Page Contains                Email           timeout=20
        Run Keyword If    "${Data4}"=="True"        Click Element       ${Personal_profile_Contact_Save}
Validating_Contact_Privacy_Option  
        [Documentation]                    Ensure the Contact privacy option      
        Sleep    5
        ${Text1}        Run Keyword And Return Status         wait Until Page Contains                 About          timeout=20
        Run Keyword If    "${Text1}"=="True"        Click Element           ${Personal_profile_Contact_publicicon}
        Sleep    5
        ${Text2}        Run Keyword And Return Status         wait Until Page Contains                 Public          timeout=20
        Run Keyword If    "${Text2}"=="True"        Click Element           ${Personal_profile_contact_public}  
        Sleep    10
        ${Text3}        Run Keyword And Return Status         wait Until Page Contains                 Public           timeout=20
        Run Keyword If    "${Text3}"=="True"        Click Element           ${Personal_profile_phone_closebutton} 
        Sleep    10
        ${Text4}        Run Keyword And Return Status         wait Until Page Contains                 About          timeout=20
        Run Keyword If    "${Text4}"=="True"        Click Element           ${Personal_profile_Contact_publicicon}
        Sleep    10
        ${Text5}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
        Run Keyword If    "${Text5}"=="True"        Click Element           ${Personal_profile_contact_organisation}
        Sleep    10
        Click Element           ${Personal_profile_phone_closebutton}
        Sleep    10
        ${Text6}        Run Keyword And Return Status         wait Until Page Contains                 OK            timeout=20
        Run Keyword If    "${Text6}"=="True"        Click Element           ${Choose_any_org_Ok}
        Sleep    5
        ${Text7}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
        Run Keyword If    "${Text7}"=="True"        Click Element          ${Personal_profile_phone_organisation_Selectall} 
        Sleep    5
        ${Text8}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
        Run Keyword If    "${Text8}"=="True"        Click Element           ${Personal_profile_phone_closebutton} 
        Sleep    10
        ${Text9}        Run Keyword And Return Status         wait Until Page Contains                 About          timeout=20
        Run Keyword If    "${Text9}"=="True"        Click Element           ${Personal_profile_Contact_orgicon}
        Sleep    10
        ${Text10}        Run Keyword And Return Status         wait Until Page Contains                 Private          timeout=20
        Run Keyword If    "${Text10}"=="True"        Click Element          ${Personal_profile_phone_private}    
        Sleep    10    
        ${Text11}        Run Keyword And Return Status         wait Until Page Contains                 Private           timeout=20
        Run Keyword If    "${Text11}"=="True"        Click Element           ${Personal_profile_phone_closebutton}
        Sleep    5

Validating_Email_Privacy_option
        Sleep   10
       ${Text1}        Run Keyword And Return Status         wait Until Page Contains                 About          timeout=20
        Run Keyword If    "${Text1}"=="True"        Click Element           ${Personal_profile_email_publicicon}
        Sleep    10
        ${Text2}        Run Keyword And Return Status         wait Until Page Contains                 Public          timeout=20
        Run Keyword If    "${Text2}"=="True"        Click Element           ${Personal_profile_email_public}  
        Sleep    10
        ${Text3}        Run Keyword And Return Status         wait Until Page Contains                 Public           timeout=20
        Run Keyword If    "${Text3}"=="True"        Click Element           ${Personal_profile_email_closebutton} 
        Sleep    10
       ${Text4}        Run Keyword And Return Status         wait Until Page Contains                 About          timeout=20
        Run Keyword If    "${Text4}"=="True"        Click Element           ${Personal_profile_email_publicicon}
        ${Text5}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
        Run Keyword If    "${Text5}"=="True"        Click Element          ${Personal_profile_email_organisation} 
        Click Element           ${Personal_profile_email_closebutton} 
        ${Text6}        Run Keyword And Return Status         wait Until Page Contains                 OK            timeout=20
        Run Keyword If    "${Text6}"=="True"        Click Element           ${Choose_any_org_Ok}
        ${Text7}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
        Run Keyword If    "${Text7}"=="True"        Click Element          ${Personal_profile_email_organisation_Selectall} 
        ${Text8}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
        Run Keyword If    "${Text8}"=="True"        Click Element           ${Personal_profile_email_closebutton} 
        Sleep   5
        ${Text9}        Run Keyword And Return Status         wait Until Page Contains                 About          timeout=20
        Run Keyword If    "${Text9}"=="True"        Click Element           ${Personal_profile_email_orgicon}
        ${Text10}        Run Keyword And Return Status         wait Until Page Contains                 Private          timeout=20
        Run Keyword If    "${Text10}"=="True"        Click Element          ${Personal_profile_email_private}        
        ${Text11}        Run Keyword And Return Status         wait Until Page Contains                 Private           timeout=20
        Run Keyword If    "${Text11}"=="True"        Click Element           ${Personal_profile_email_closebutton}





Validating_Address_The_Ark
        [Documentation]                    Ensure the Address 
        Swipe                               1056  2187  1073  1381
        @{Validating}=  Create List            Address       Relationship              
        Page Should Contain Text        @{Validating}  
        
        ${Letters}        Run Keyword And Return Status         wait Until Page Contains                Address           timeout=20
        Run Keyword If    "${Letters}"=="True"        Click Element       ${Country_Edit} 
        ${Letters2}        Run Keyword And Return Status         wait Until Page Contains                State           timeout=20
        Run Keyword If    "${Letters2}"=="True"        Get Text       ${My_Profile_EditProfile_Address_State}
        ${Letters3}        Run Keyword And Return Status         wait Until Page Contains                City           timeout=20
        Run Keyword If    "${Letters3}"=="True"        Get Text       ${My_Profile_EditProfile_Address_City}
        ${Letters4}        Run Keyword And Return Status         wait Until Page Contains                Street           timeout=20
        Run Keyword If    "${Letters4}"=="True"        Get Text       ${My_Profile_EditProfile_Address_Street}
        ${Letters5}        Run Keyword And Return Status         wait Until Page Contains                ZipCode           timeout=20
        Run Keyword If    "${Letters5}"=="True"        Get Text       ${My_Profile_EditProfile_Address_Street}
        ${Letters6}        Run Keyword And Return Status         wait Until Page Contains                Save           timeout=20
        Run Keyword If    "${Letters6}"=="True"        Click Element       ${My_Profile_EditProfile_Address_Save}
Validating_Address_Privacy_Option
        [Documentation]                    Ensure the Address privacy option
        @{Validating}=  Create List            Contact       Relationship              
        Page Should Contain Text        @{Validating} 
        Swipe                               1056  2187  1073  1381
        ${Text1}        Run Keyword And Return Status         wait Until Page Contains                 Address          timeout=20
        Run Keyword If    "${Text1}"=="True"        Click Element           ${Personal_profile_address_publicicon}
        Sleep    5
        ${Text2}        Run Keyword And Return Status         wait Until Page Contains                 Public          timeout=20
        Run Keyword If    "${Text2}"=="True"        Click Element           ${Personal_profile_address_public}  
        Sleep    5
        ${Text3}        Run Keyword And Return Status         wait Until Page Contains                 Public           timeout=20
        Run Keyword If    "${Text3}"=="True"        Click Element           ${Personal_profile_address_closebutton} 
        Sleep    5
       ${Text4}        Run Keyword And Return Status         wait Until Page Contains                 Address          timeout=20
        Run Keyword If    "${Text4}"=="True"        Click Element           ${Personal_profile_address_publicicon}
        ${Text5}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
        Run Keyword If    "${Text5}"=="True"        Click Element          ${Personal_profile_address_organisation} 
        Click Element           ${Personal_profile_address_closebutton} 
        ${Text6}        Run Keyword And Return Status         wait Until Page Contains                 OK            timeout=20
        Run Keyword If    "${Text6}"=="True"        Click Element           ${Choose_any_org_Ok}
        ${Text7}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
        Run Keyword If    "${Text7}"=="True"        Click Element          ${Personal_profile_address_organisation_Selectall} 
        ${Text8}        Run Keyword And Return Status         wait Until Page Contains                 Organization           timeout=20
        Run Keyword If    "${Text8}"=="True"        Click Element           ${Personal_profile_address_closebutton} 
        Sleep   5
        ${Text9}        Run Keyword And Return Status         wait Until Page Contains                 Address          timeout=20
        Run Keyword If    "${Text9}"=="True"        Click Element           ${Personal_profile_address_orgicon}
        ${Text10}        Run Keyword And Return Status         wait Until Page Contains                 Private          timeout=20
        Run Keyword If    "${Text10}"=="True"        Click Element          ${Personal_profile_address_private}        
        ${Text11}        Run Keyword And Return Status         wait Until Page Contains                 Private           timeout=20
        Run Keyword If    "${Text11}"=="True"        Click Element           ${Personal_profile_address_closebutton}
        


Validating_My_Post
        [Documentation]                    Ensure the Personal profile
        @{Validating}=  Create List            Contact                     
        # Page Should Contain Text        @{Validating}
        # ${Text1}        Run Keyword And Return Status         wait Until Page Contains                 Contact          timeout=20
        # Run Keyword If    "${Text1}"=="True"        Click Element          ${Personal_profile_BackNaviga}
        # @{Validatingmultipletextark}=  Create List        My Posts            My Prayers       
        # Page Should Contain Text        @{Validatingmultipletextark}
        ${Text2}        Run Keyword And Return Status         wait Until Page Contains                 My Posts          timeout=20
        Run Keyword If    "${Text2}"=="True"        Click Element         ${My_Profile_MyPosts}
        Sleep  10
Validating_My_Post_Posting_The_Ark
        [Documentation]                    Ensure the Personal profile
        @{Validatingmultipletextark}=  Create List        My Posts                 Share      
        Page Should Contain Text        @{Validatingmultipletextark}
        Sleep   30
        ${Text1}        Run Keyword And Return Status         Wait Until Page Contains Element    ${My_Profile_MyPosts_Title1}        timeout=20
        Run Keyword If    "${Text1}"=="True"        Get Text       ${My_Profile_MyPosts_Title1}
        Sleep   10
        Wait Until Page Contains Element                //android.view.ViewGroup[@resource-id="my-post-feed-0-like-btn"]         timeout=30
    FOR     ${result}   IN RANGE    0   5
            Click Element    //android.view.ViewGroup[@resource-id="my-post-feed-0-like-btn"]
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==3
    END 
       Sleep   5
       Click Element         ${My_Profile_MyPosts_Comment1}
       Sleep  20
       Get Text      ${My_Profile_MyPosts_Comment1_LIKE}
       Sleep    5
    FOR     ${result}   IN RANGE    0   5    
        ${random_comment} =    Generate Random String    10    # Change 10 to the desired length of the comment
        Input Text    ${My_Profile_MyPosts_Comment1_comment}    ${random_comment}
        Click Element    ${My_Profile_MyPosts_Comment1_OK}
        ${result}   Set Variable    ${result}+1
        Exit For Loop If    ${result}==3
        Sleep    5 
    END
        Click Element          ${My_Profile_MyPosts_Back}

        Sleep   10
        @{Validatingmultipletextark}=  Create List         Comment       Share      
        Page Should Contain Text        @{Validatingmultipletextark}
        ${Text1}        Run Keyword And Return Status         wait Until Page Contains                 Comment          timeout=20
        Run Keyword If    "${Text1}"=="True"         Get Text       ${My_Profile_MyPosts_Comment1_count}
        Sleep  10
        Wait Until Page Contains Element                ${My_Profile_MyPosts_Description1}
        Sleep  10
    FOR     ${result}   IN RANGE    0   20
            Swipe       1053    1914      1066    1172
            Sleep   5
            ${xpath_expression} =    Set Variable    //android.widget.TextView[contains(@text, 'Like')]
            ${like_button_count} =    Get Matching Xpath Count    ${xpath_expression}
            Log    Number of 'Like' buttons on the page: ${like_button_count}
            Capture Page Screenshot           C:/Users/Steffy/Desktop/screenshot.png
            ${xpath_expression1} =    Set Variable    //android.widget.TextView[contains(@text, 'Comment')]
            ${Comment_button_count} =    Get Matching Xpath Count    ${xpath_expression1}
            Log    Number of 'Comment' buttons on the page: ${Comment_button_count}
            Capture Page Screenshot            C:/Users/Steffy/Desktop/screenshot.png
            ${xpath_expression2} =    Set Variable    //android.widget.TextView[contains(@text, 'Share')]
            ${Share_button_count} =    Get Matching Xpath Count    ${xpath_expression2}
            Log    Number of 'Comment' buttons on the page: ${Share_button_count}
            Capture Page Screenshot            C:/Users/Steffy/Desktop/screenshot.png
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==10
    END    
        Click Element   ${My_Profile_MyPosts_BackNavigation}
Validating_My_Prayers
        [Documentation]                    Ensure the Personal profile
        Sleep   15
        @{Validating}=  Create List            My Prayers                     
        Page Should Contain Text        @{Validating}
        Sleep   5

        ${Text1}        Run Keyword And Return Status         wait Until Page Contains                   My Prayers           timeout=20
        Run Keyword If    "${Text1}"=="True"        Click Element          ${My_Profile_MyPrayers}
        Sleep   15
        ${Text0}        Run Keyword And Return Status         wait Until Page Contains                   My Prayers           timeout=20
        Run Keyword If    "${Text0}"=="True"        Get Text             ${Myprayers_Card1}
        Sleep    10
        ${Text2}        Run Keyword And Return Status         wait Until Page Contains                   My Prayers           timeout=20
        Run Keyword If    "${Text2}"=="True"      Wait Until Page Contains Element    ${My_Profile_MyPrayers_Like_pray1}
        Sleep    10

    FOR     ${result}   IN RANGE    0   5
            Click Element    ${My_Profile_MyPrayers_Like_pray1}
            Sleep    5
            ${result}   Set Variable    ${result}+1
            Exit For Loop If    ${result}==4
    END 
       
        Sleep   5        
        ${Text2}        Run Keyword And Return Status         wait Until Page Contains                   Pray           timeout=20
        Run Keyword If    "${Text2}"=="True"       Click Element    ${My_Profile_MyPrayers_Comment1}
        Sleep   5

    FOR     ${result}   IN RANGE    0   5    
        ${random_comment1} =    Generate Random String    10    # Change 10 to the desired length of the comment
        Input Text     ${comment_giving}      ${random_comment1}
        Click Element    ${comment_send}
        ${result}   Set Variable    ${result}+1
        Exit For Loop If    ${result}==3
    END
        Sleep    5 
        Click Element     ${Myprayer_Coment_Backnavi}
        Sleep   5        
        ${Text3}        Run Keyword And Return Status         wait Until Page Contains                   Pray           timeout=20
        Run Keyword If    "${Text3}"=="True"       Click Element    ${My_Profile_MyPrayers_BackNavigation}

Validating_Saved_Items
        Sleep    15
        Click Element            ${My_Profile_SavedItems}
        Sleep    15
        ${Text1}        Run Keyword And Return Status         wait Until Page Contains                   Saved Items           timeout=20
        Run Keyword If    "${Text1}"=="True"        Click Element          ${My_Profile_SavedItems_BackNavigation}
        Sleep    15
        ${Text2}        Run Keyword And Return Status         wait Until Page Contains                   Saved items           timeout=20
        Run Keyword If    "${Text2}"=="True"        Click Element         ${My_Profile_BackNavigation}
        Sleep    10
        ${Text3}        Run Keyword And Return Status         wait Until Page Contains                   News           timeout=20
        Run Keyword If    "${Text3}"=="True"        Click Element         ${Main_page_News_Icon}
        Sleep   10
        ${Text8}        Run Keyword And Return Status         wait Until Page Contains                   News           timeout=20
        Run Keyword If    "${Text8}"=="True"        Click Element         ${news_liked}
        Sleep   10
        ${Text4}        Run Keyword And Return Status         wait Until Page Contains                   News           timeout=20
        Run Keyword If    "${Text4}"=="True"        Click Element         ${news_saved}
        Sleep    15
        Swipe     954    943    58    936
        Sleep     5
        ${Text5}        Run Keyword And Return Status         wait Until Page Contains                   News           timeout=20
        Run Keyword If    "${Text5}"=="True"        Click Element         ${news_saved}
        Sleep     5
        ${Text6}        Run Keyword And Return Status         wait Until Page Contains                   News           timeout=20
        Run Keyword If    "${Text6}"=="True"        Click Element         ${ProfileArk_Image}
        Sleep     5
        ${Text7}        Run Keyword And Return Status         wait Until Page Contains                   My Profile           timeout=20
        Run Keyword If    "${Text7}"=="True"        Click Element        ${My_Profile_SavedItems}    
        Sleep    5
        Swipe        1042    2034      1049     437
        Click Element            ${My_Profile_SavedItems_BackNavigation}
        Sleep    10

Validating_Following
        Sleep   20
        Click Element            ${My_Profile_Following}
        Sleep    5
        Wait Until Element Is Visible           ${My_Profile_Following_View}
        Sleep   10
         # Define the XPath expression
        ${xpath_expression}    Set Variable    //android.view.ViewGroup[@resource-id="my-profile-following-card"]
        Sleep   10
    # Find all matching elements
        ${matching_elements}    Get WebElements    ${xpath_expression}
        Sleep   10
    # Get the number of matching elements
        ${num_elements}    Get Length    ${matching_elements}
        Sleep   10
    # Randomly select one element
        ${random_index}    Evaluate    random.randint(0, ${num_elements}-1)
        ${random_element}    Get From List    ${matching_elements}    ${random_index}
         Click Element    ${random_element}

    #Navigation
        Sleep     10
        ${Text1}        Run Keyword And Return Status         Wait Until Page Contains Element        ${My_Profile_Following_group_Backnavi}          timeout=20
        Run Keyword If    "${Text1}"=="True"        Click Element        ${My_Profile_Following_group_Backnavi} 
       
        Sleep     10
        ${Text2}        Run Keyword And Return Status         Wait Until Page Contains Element        ${My_Profile_Following_BackNavigation}        timeout=20
        Run Keyword If    "${Text2}"=="True"        Click Element        ${My_Profile_Following_BackNavigation} 
        Sleep     10
        ${Text2}        Run Keyword And Return Status         Wait Until Page Contains Element        ${My_Profile_Following_BackNavigation}        timeout=20
        Run Keyword If    "${Text2}"=="True"        Click Element        ${My_Profile_Following_BackNavigation} 
 
Validating_Settings_The_Ark
       [Documentation]        Vakidating  Accountsetting 
        Sleep   15
        Click Element            ${My_Profile_Settings} 
        Sleep    5
        # ${Text1}        Run Keyword And Return Status         wait Until Page Contains                   Settings           timeout=20
        # Run Keyword If    "${Text1}"=="True"        Click Element          ${My_Profile_Settings_Accountsettings}
        # Sleep   5
        # ${Text2}        Run Keyword And Return Status         wait Until Page Contains                   Change Password           timeout=20
        # Run Keyword If    "${Text2}"=="True"        Click Element          ${My_Profile_Settings_ChangePassword} 
        # Sleep   5
        # ${Text3}        Run Keyword And Return Status         wait Until Page Contains                   Change Password           timeout=20
        # Run Keyword If    "${Text3}"=="True"        Input Text          ${My_Profile_Settings_CurrentPassword}          Tahaan@05
        # Sleep   5
        # ${Text31}        Run Keyword And Return Status         wait Until Page Contains                   Change Password           timeout=20
        # Run Keyword If    "${Text31}"=="True"        Click Element    ${My_Profile_EyeBall_CurrentPassword} 
        # Sleep   5 
        # ${Text4}        Run Keyword And Return Status         wait Until Page Contains                   New Password           timeout=20
        # Run Keyword If    "${Text4}"=="True"        Input Text          ${My_Profile_Settings_NewPassword}          Tahaan@06
        # Sleep   5
        # ${Text41}        Run Keyword And Return Status         wait Until Page Contains                   Change Password           timeout=20
        # Run Keyword If    "${Text41}"=="True"        Click Element    ${My_Profile_EyeBall_NewPassword}
        # Sleep   6 
        # ${Text5}        Run Keyword And Return Status         wait Until Page Contains                   Re-enter Password           timeout=20
        # Run Keyword If    "${Text5}"=="True"        Input Text          ${My_Profile_Settings_RePassword}         Tahaan@06
        # Sleep   5
        # ${Text51}        Run Keyword And Return Status         wait Until Page Contains                   Change Password           timeout=20
        # Run Keyword If    "${Text51}"=="True"        Click Element        ${My_Profile_EyeBall_RePassword} 
        # Sleep   6 
        # ${Text6}        Run Keyword And Return Status         wait Until Page Contains                  Save           timeout=20
        # Run Keyword If    "${Text6}"=="True"         Click Element          ${My_Profile_Save}
        # Sleep   6 
        # ${Text7}        Run Keyword And Return Status         wait Until Page Contains                  Deactivate Account         timeout=20
        # Run Keyword If    "${Text7}"=="True"         Click Element         ${My_Profile_Settings_Deactivate}
        # Sleep   6 
        # ${Text8}        Run Keyword And Return Status         wait Until Page Contains                  Cancel         timeout=20
        # Run Keyword If    "${Text8}"=="True"         Click Element         ${My_Profile_Settings_Deactivate_Continuetodeactive}        
        # Sleep   6 


Validating_Language_Preference_The_Ark
       [Documentation]        Vakidating  Language Preference 
       Sleep   15
        # ${Text9}        Run Keyword And Return Status         wait Until Page Contains                  Account Settings         timeout=20
        # Run Keyword If    "${Text9}"=="True"         Click Element         ${My_Profile_Settings_Accountsettings_navigat} 
        Sleep   6 
        ${Text10}        Run Keyword And Return Status         wait Until Page Contains                   Settings         timeout=20
        Run Keyword If    "${Text10}"=="True"         Click Element        ${My_Profile_Settings_Languagepreference} 
        Sleep   6 
        ${Text11}        Run Keyword And Return Status         wait Until Page Contains                   Language         timeout=20
        Run Keyword If    "${Text11}"=="True"         Click Element        ${My_Profile_Languagepreference_LanguageUnderstand} 
        Sleep   6 
        ${Text12}        Run Keyword And Return Status         wait Until Page Contains                   Language         timeout=20
        Run Keyword If    "${Text12}"=="True"         Click Element        ${which_language}         
        Sleep   6 
        # ${Text13}        Run Keyword And Return Status         wait Until Page Contains                   Arabic         timeout=20
        # Run Keyword If    "${Text13}"=="True"         Click Element        ${input_trans}
        @{ValidatingRegisterPageText}=  Create List        Arabic     Bengali                
        Page Should Contain Text        @{ValidatingRegisterPageText} 

        ${Language_list}=    Create List    @{languages}
        ${random_index}=    Evaluate    random.randint(0, len(${Language_list})-1)
        ${random_language}=    Get From List    ${Language_list}    ${random_index}

        Log    Selected Language: ${random_language}
        # ${Letters11}        Run Keyword And Return Status         Wait Until Element Is Visible                 ${random_language}           timeout=30
        # Run Keyword If    "${Letters11}"=="True"                        Click Element         ${input_trans} 
        ${Letters12}        Run Keyword And Return Status         Wait Until Element Is Visible                ${input_trans}           timeout=30
        Run Keyword If    "${Letters12}"=="True"                      Input Text       ${input_trans}       ${random_language}
        Sleep   15
        ${Letters13}        Run Keyword And Return Status         Wait Until Element Is Visible               ${input_trans}           timeout=30
        Run Keyword If    "${Letters13}"=="True"                      Click Element       //android.widget.TextView[@text='${random_language}']
        Sleep   10
        ${Letters14}        Run Keyword And Return Status         Wait Until Element Is Visible               ${input_trans}           timeout=30
        Run Keyword If    "${Letters14}"=="True"                     Click Element         ${cancel_drop}
        Sleep   20
        ${Letters15}        Run Keyword And Return Status         Wait Until Element Is Visible              ${save_language}         timeout=30
        Run Keyword If    "${Letters15}"=="True"                      Click Element       ${save_language}
        Sleep   30
        ${Letters16}        Run Keyword And Return Status         Wait Until Element Is Visible               ${Language_prefer_navigation}           timeout=30
        Run Keyword If    "${Letters16}"=="True"                      Tap With Positions            ${Language_prefer_navigation}   
        Sleep   20
        ${Letters17}        Run Keyword And Return Status         Wait Until Element Is Visible               ${My_Profile_Settings_Accountsettings_navigat}           timeout=30
        Run Keyword If    "${Letters17}"=="True"                      Click Element       ${My_Profile_Settings_Accountsettings_navigat}
