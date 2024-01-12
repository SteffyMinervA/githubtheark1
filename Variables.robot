*** Settings ***
Documentation    Suite description
Library     String
Library  AppiumLibrary

*** Variables ***


#####Registerpage&loginpage###########
${Description_1}                                       launch-slider-1-description
${About_Ark}                                            xpath= //android.widget.TextView[contains(@text,'About Ark')]
${About_Ark_Navigation}                                 xpath= //android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.ImageView
${About_Ark_Connectwithus}                              xpath= //android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[5]/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${About_Ark_Firstname}                                  xpath= //android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText
${About_Ark_Email}                                      xpath= //android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText
${About_Ark_Subject}                                    xpath= //android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[4]/android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText
${About_Ark_Comments}                                   xpath= //android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[5]/android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText
${About_Ark_Submit}                                     xpath= //android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[6]/android.view.ViewGroup[2]/android.widget.TextView

${characters}        abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
${username_length}    8
${email_prefix}       random_
${email_suffix}       @example.com
@{email_subjects}      Subject 1    Subject 2    Subject 3
${comments_length}     100


${Register}                                             //android.view.ViewGroup[@resource-id='btn-register']
${SignUp_First_Name}                                    xpath= //android.widget.EditText[@resource-id='register-input-firstname']
${SignUp_Last_Name}                                     xpath= //android.widget.EditText[@resource-id='register-input-lastname']
${SignUp_Email}                                         xpath= //android.widget.EditText[@resource-id='register-input-email']
${SignUp_New_Password}                                  xpath= //android.widget.EditText[@resource-id='register-input-password']
${SignUp_Phone_Number}                                  xpath= //android.widget.EditText[@resource-id='register-input-phone']
${SignUp_Zipcode}                                       xpath= //android.widget.EditText[@resource-id='register-input-zipCode']
${SignUp_Country}                                       xpath= //android.view.ViewGroup[@resource-id='register-dropdown-country']
${SignUp_Country_Selection1}                            xpath= //android.widget.EditText[@resource-id='search-input-dropdown']
${SignUp_Country_Selection2}                            xpath= //android.view.ViewGroup[@resource-id='list-item-India']
${SignUp_Date_of_birth}                                 xpath= //android.view.ViewGroup[@resource-id='register-input-dob']
${SignUp_Date_of_birth_Select}                          xpath= //android.widget.EditText[@resource-id='android:id/numberpicker_input']
${SWIPE_START}      500, 1200  # Adjust the coordinates based on your application
${SWIPE_END}        500, 600   # Adjust the coordinates based on your application


${SignUp_Gender}                                        xpath= //android.view.ViewGroup[@resource-id='register-input-gender-tab-Female']
${SignUp_Register}                                      xpath= //android.view.ViewGroup[@resource-id='btn-register']
${Registerbutton}                                       xpath= //android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.widget.TextView
${ProfileArk}                                           xpath= //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[3]
# ${Xbutton}                                            xpath= //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
${Logo_Display}                                         xpath= //android.widget.ImageView[@resource-id='global-topbar-logo']
${Log_Out}                                              xpath= //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[6]
${Pop_Up_Log_Out}                                       xpath= //android.view.ViewGroup[contains(@resource-id,'popUp-btn-positive')]
${ProfileArk_Image}                                     xpath= //android.widget.ImageView[@resource-id,'global-topbar-profile-picture']
${Login_Button_Click}                                   xpath= //android.widget.TextView[contains(@text,'Log in')]
${Login_UserName}                                       xpath= //android.widget.EditText[contains(@resource-id,'login-input-username')]
${Login_Password}                                       xpath= //android.widget.EditText[contains(@resource-id,'login-input-password')]    
${Login_Password_eyeball}                               xpath= //android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${Login_button}                                         xpath= //android.view.ViewGroup[@resource-id='btn-login']
${Main_Home_Tab}                                        global-bottom-bar-container
${Main_Home_Tab_Search_Button}                          xpath= //android.view.ViewGroup[contains(@resource-id,'global-topbar-search')]
${Main_Search_Button_Navigate}                          xpath= //android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.EditText
${Main_Search_Button_Navigate1}                         xpath= /android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
${Login_NotRegistered}                                  xpath= //android.widget.TextView[contains(@text,"Not registered? Signup here")]

#####My profile######
${My_Profile_UserName}                                  xpath=  //android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.widget.TextView[1]
${My_Profile_Country}                                   xpath=  //android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.widget.TextView[2]
${My_Profile_EditProfile}                               xpath= //android.widget.TextView[@resource-id='profile-text-edit']
${Edit}                                                 xpath= //android.view.ViewGroup[@resource-id='profile-btn-edit-profile']
${SelectProfile}                                        xpath= //android.view.ViewGroup[@resource-id='profile-Select profile picture-btn']
${SelectProfile_word}                                   Allow The Ark - Staging to access photos and videos on this device?
${Image_Allow}                                          xpath= //android.widget.Button[contains(@text,'ALLOW')]
${NotAllow}                                             xpath= //android.widget.Button[@resource-id='com.android.permissioncontroller:id/permission_deny_button']
${Image_Album}                                          xpath= //android.widget.TextView[contains(@text,'Albums')]
${Album_Downloads}                                      xpath= //android.widget.TextView[contains(@text,'Downloads')]
${Downloads_Picture}                                    xpath= //android.widget.FrameLayout[@content-desc="Photo taken on Dec 26, 2023, 6:54:52 PM"]/androidx.cardview.widget.CardView/android.widget.FrameLayout/android.widget.ImageView
${Downloads_Profilepic}                                 xpath=  //android.widget.Button[@resource-id="com.thearkconnect.social.staging:id/menu_crop"]


${About_Edit}                                            xpath=  //android.view.ViewGroup[@resource-id="profile-btn-about-edit"]
${Frst}                                                  xpath= //android.widget.EditText[@resource-id="profile-input-first-name"]
${FirstName}                                             Tahaan
${Middle}                                                xpath= //android.widget.EditText[@resource-id="profile-input-middle-name"]
${MiddleName}                                            Bromeyo
${Last}                                                  xpath= //android.widget.EditText[@resource-id="profile-input-last-name"]
${LastName}                                              Steffy
${Dob}                                                   xpath= //android.widget.EditText[@resource-id="profile-input-dob"]
${Gender}                                                xpath= //android.widget.EditText[@resource-id="profile-input-gender"]
${Save}                                                  xpath= //android.view.ViewGroup[@resource-id="save-btn"]

${My_Profile_EditProfile_About_BackNaviga}

${Contact_Edit}                                          xpath= //android.view.ViewGroup[@resource-id="profile-btn-contact-edit"]
${Number}                                                xpath= //android.widget.EditText[@resource-id="profile-input-contact-number"]
${Email}                                                 xpath= //android.widget.EditText[@resource-id="profile-input-email"]
${Contact_Save}                                          xpath= //android.view.ViewGroup[@resource-id="save-btn"]
${My_Profile_EditProfile_contact_BackNaviga}

${My_Profile_EditProfile_Relationship_Edit}
${My_Profile_EditProfile_Relationship_status}
${My_Profile_EditProfile_Relationship_status_Single} 
${My_Profile_EditProfile_Relationship_status_Married}
${My_Profile_EditProfile_Relationship_status_Since}
${My_Profile_EditProfile_Relationship_status_Ok}
${My_Profile_EditProfile_Relationship_status_Cancel}
${My_Profile_EditProfile_Relationship_Patrner_Email}
${My_Profile_EditProfile_Relationship_Save}

${Country_Edit}                                         xpath= //android.view.ViewGroup[@resource-id="profile-btn-address-edit"]
${Address_Country}                                      xpath= //android.view.ViewGroup[@resource-id="profile-dropdown-country"]
${My_Profile_EditProfile_Address_State}                 xpath= //android.view.ViewGroup[@resource-id="profile-dropdown-state"]
${My_Profile_EditProfile_Address_City}                  xpath= //android.view.ViewGroup[@resource-id="profile-dropdown-city"]
${My_Profile_EditProfile_Address_Street}                xpath= //android.widget.EditText[@resource-id="profile-dropdown-street"]
${My_Profile_EditProfile_Address_Zipcode}               xpath= //android.widget.EditText[@resource-id="profile-input-zipcode"]
${My_Profile_EditProfile_Address_Save}
${My_Profile_EditProfile_Address_BackNaviga}




${My_Profile_MyPosts}                                   xpath=  //android.view.ViewGroup[@resource-id,'profile-btn-mypost']
${My_Profile_MyPosts_BackNavigation}
${My_Profile_MyPosts_Threedot}
${My_Profile_MyPosts_Like}
${My_Profile_MyPosts_Comment}
${My_Profile_MyPosts_OrgName}
${My_Profile_MyPosts_Share}

${My_Profile_MyPrayers}                                 xpath=  //android.view.ViewGroup[@resource-id,'profile-btn-myprayer']
${My_Profile_MyPrayers_BackNavigation}                  xpath=  
${My_Profile_MyPrayers_Groupname}
${My_Profile_MyPrayers_Threedot}
${My_Profile_MyPrayers_Like_pray}
${My_Profile_MyPrayers_Comment}
${My_Profile_MyPrayers_Update}
${My_Profile_MyPrayers_ViewFullPrayer}

${My_Profile_SavedItems}                                xpath=  //android.view.ViewGroup[@resource-id,'profile-btn-saveditems']                           
${My_Profile_SavedItems_BackNavigation}                 xpath=  
${My_Profile_SavedItems_OrgName}
${My_Profile_SavedItems_threedot}
${My_Profile_SavedItems_threedot_delete}
${My_Profile_SavedItems_threedot_report}
${My_Profile_SavedItems_threedot_save}
${My_Profile_SavedItems_Like}
${My_Profile_SavedItems_Comment}
${My_Profile_SavedItems_share}

${My_Profile_Following}                                 xpath=  //android.view.ViewGroup[@resource-id,'profile-btn-following']
${My_Profile_Following_BackNavigation}                  xpath=  //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${My_Profile_Following_View}
${My_Profile_Following_group}                           xpath= //android.widget.TextView[@resource-id,'profile-following-card-Testing-text']




${My_Profile_Settings}                                  xpath=  //android.view.ViewGroup[@resource-id,'profile-btn-settings']
${My_Profile_Settings_Accountsettings}                  xpath=  //android.view.ViewGroup[@resource-id,'account-settings-btn']
${My_Profile_Settings_Accountsettings_navigat}
${My_Profile_Settings_Languagepreference}               xpath=  //android.view.ViewGroup[@resource-id,'language-preference-btn']
${My_Profile_Settings_ChangePassword}                   xpath=  //android.view.ViewGroup[@resource-id,'profile-btn-change-password']
${My_Profile_Settings_Deactivate}                       xpth=   //android.view.ViewGroup[@resource-id,'profile-btn-deactivation']
${My_Profile_Settings_CurrentPassword}                  xpath= //android.widget.EditText[@resource-id,'profile-input-current-password']
${My_Profile_EyeBall_CurrentPassword}                   xpath= //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.ImageView
${My_Profile_Settings_NewPassword}                      xpath= //android.widget.EditText[@resource-id,'profile-input-new-password']
${My_Profile_EyeBall_NewPassword}                       xpath= //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[4]/android.widget.ImageView
${My_Profile_Settings_RePassword}                       xpath= //android.widget.EditText[@resource-id,'profile-input-re-enter-password']
${My_Profile_EyeBall_RePassword}                        xpath= //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[6]/android.widget.ImageView
${My_Profile_Save}                                      xpath= //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[7]
${My_Profile_ChangeAcccountSetting_BackNavig}                     xpath=  //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView 
${My_Profile_Settings_BackNavigation}                   xpath=  //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${My_Profile_Settings_Deactivate_Cancel}                xpath=  //android.view.ViewGroup[@resource-id,'profile-btn-continue']
${My_Profile_Settings_Deactivate_Continuetodeactive}        xpath=  //android.view.ViewGroup[@resource-id,'profile-btn-cancel']
${My_Profile_Settings_Deactivate_Navigation}

${My_Profile_LogOut}                                    xpath= //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[6]
${My_Profile_LogOut_Logoutpop}                           xpath= //android.view.ViewGroup[@resource-id,'popUp-btn-positive']
${My_Profile_LogOut_Cancelpop}                           
${contineubutton}                                       xpath= //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[3] 
${AllsetattheArk}                                       xpath= //android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[3]
${My_Profile_Image}                                     xpath= //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.ImageView
${Register_email_correction}                            xpath= //android.widget.TextView[contains(@text,'You seem to have an account already! Kindly try logging in again else provide alternate email')]
${Email_error_message}                                  You seem to have an account already! Kindly try logging in again else provide alternate email
${Register_Back_button}                                 xpath= //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${Phone_number_error_message}                           xpath= //android.widget.TextView[contains(@text,'You seem to have an account already! Kindly try logging in again else provide alternate Number')]
${Mobile_error_message}                                 You seem to have an account already! Kindly try logging in again else provide alternate Number
${Invalid_pas_id}                                       xpath=  //android.widget.TextView[contains(@text,'Invalid email or password')]
${Invalid_password_message}                              Invalid email or password
${Invalid_ok_button}                                    xpath= //android.widget.Button[contains(@text,'OK')]
${The_Ark_Logo}                                         global-topbar-logo
${Main_page_Searchbar}                                  header-btn-search
${Main_page_Notificationbar}                            header-btn-notification
${Main_page_Profile_Icon}                               //android.widget.ImageView[@resource-id="global-topbar-profile-picture"]
${Main_page_Global_Icon}                                //android.widget.Button[@resource-id,'global-bottom-nav-PublicFeed']
${Main_page_Private_Icon}                               xpath=    //android.widget.Button[contains(@resource-id,'global-bottom-nav-HomeMyFeed')]
${Main_page_Private_Icon_Nopost}                        xpath=    //android.widget.TextView[contains(@text,'No Posts found')]
${Main_page_MyOrg_Icon}                                 xpath=    //android.widget.Button[contains(@resource-id,'global-bottom-nav-HomeMyOrganizations')]
${Main_page_MyOrg_Icon_feed}                            xpath=    //android.widget.TextView[contains(@text,'Organizations you can follow')]
${Main_page_News_Icon}                                  xpath=    //android.widget.Button[contains(@resource-id,'global-bottom-nav-HomeGlobalFeed')]
${Main_page_More_Option}                                xpath=    //android.widget.Button[contains(@resource-id,'global-bottom-nav-GlobalMenu')]
${Create_New_Feed}                                      xpath=    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${Main_page_Floating_Button}                            btn-global-fab
${More_Option_PrayerDiary}                              xpath=    //android.view.ViewGroup[contains(@resource-id,'btn-prayer-diary-content')]
${More_Option_Mygroups}                                 xpath=    //android.view.ViewGroup[contains(@resource-id,'btn-my-groups-content')]
${More_Option_PendingInvites}                           xpath=    //android.view.ViewGroup[contains(@resource-id,'btn-pending-invites-content')]
${Pending_Invites}                                      xpath=    //android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.view.ViewGroup[1]
${More_Option_ArkEnterprizes}                           xpath=    //android.view.ViewGroup[contains(@resource-id,'btn-ark-enterprise-content')]
${More_Option_GroupRequest}                             xpath=    //android.view.ViewGroup[contains(@resource-id,'btn-group-requests-content')]
${More_Option_AboutArk}                                 xpath=    //android.view.ViewGroup[contains(@resource-id,'btn-about-ark-content')]
${More_Option_PrayerDiary_Navigator}                    xpath=    //android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView    
${More_Option_Mygroup_Navigator}                        xpath=    //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView    
${More_Option_PendingInvites_Navigator}                 xpath=    //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView    
${Notification_bar}                                     xpath=    //android.view.ViewGroup[contains(@resource-id,'global-topbar-notification')]
${Notificaion}                                          xpath=   //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup
${Notificaion_Navigator}                                xpath=   //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${More_Option_ArkEnterprizes_Navigator}                 xpath=   
${More_Option_GroupRequest_Navigator}                   xpath=    //android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView   
${More_Option_AboutArk_Navigator}                       xpath=    //android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.ImageView
