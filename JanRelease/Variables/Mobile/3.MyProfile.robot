*** Settings ***
Documentation    Suite description
Library     String
Library  AppiumLibrary

*** Variables ***


${Login_Button_Click}                                   xpath= //android.widget.TextView[contains(@text,'Log in')]
${Login_UserName}                                       xpath= //android.widget.EditText[contains(@resource-id,'login-input-username')]
${Login_Password}                                       xpath= //android.widget.EditText[contains(@resource-id,'login-input-password')]    
${Login_Password_eyeball}                               xpath= //android.view.ViewGroup[@resource-id='login-input-password-password-eye-on']
${Login_button}                                         xpath= //android.view.ViewGroup[@resource-id='btn-login']
${Username}                                             steffy17minerva@gmail.com
${Password}                                             Tahaan@06

##### My Profile #####
${My_Profile_UserName}                                  xpath=  //android.widget.TextView[@resource-id="profile-user-name"]
${My_Profile_Country}                                   xpath=  //android.widget.TextView[@resource-id="profile-user-region"]
${My_Profile_EditProfile}                               xpath= //android.widget.TextView[@resource-id="profile-text-edit"]
${Personal_profile_Edit}                                                 xpath= //android.view.ViewGroup[@resource-id="profile-btn-edit-profile"]
${Personal_profile_SelectProfile}                                        xpath= //android.view.ViewGroup[@resource-id="profile-Select profile picture-btn"]
${Personal_profile_SelectProfile_word}                                   Allow The Ark - Staging to access photos and videos on this device?
${Personal_profile_Image_Allow}                                          xpath= //android.widget.Button[contains(@text,'ALLOW')]
${Personal_profile_NotAllow}                                             xpath= //android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_deny_button"]
${Personal_profile_Image_Album}                                          xpath= //android.widget.TextView[contains(@text,'Albums')]
${Personal_profile_Album_Downloads}                                      xpath= //android.widget.TextView[contains(@text,'Downloads')]
${Personal_profile_Downloads_Picture}                                    xpath= //android.widget.FrameLayout[@content-desc="Photo taken on Dec 26, 2023, 6:54:52 PM"]/androidx.cardview.widget.CardView/android.widget.FrameLayout/android.widget.ImageView
${Personal_profile_Downloads_Profilepic}                                 xpath=  //android.widget.Button[@resource-id="com.thearkconnect.social.staging:id/menu_crop"]

##### My Profile About #####
${Personal_profile_About_Edit}                                            xpath=  //android.view.ViewGroup[@resource-id="profile-btn-about-edit"]
${Personal_profile_Frst}                                                  xpath= //android.widget.EditText[@resource-id="profile-input-first-name"]
${Personal_profile_FirstName}                                             senthil
${Personal_profile_Middle}                                                xpath= //android.widget.EditText[@resource-id="profile-input-middle-name"]
${Personal_profile_MiddleName}                                            nathan
${Personal_profile_Last}                                                  xpath= //android.widget.EditText[@resource-id="profile-input-last-name"]
${Personal_profile_LastName}                                              s
${Personal_profile_Dob}                                                   xpath= //android.widget.EditText[@resource-id="profile-input-dob"]
${Personal_profile_Gender}                                                xpath= //android.widget.EditText[@resource-id="profile-input-gender"]
${Personal_profile_Save}                                                  xpath= //android.view.ViewGroup[@resource-id="save-btn"]
${Personal_profile_About}                                                  xpath= //android.view.ViewGroup[@resource-id="profile-about"]
${Personal_profile_dob_publicicon}                                              xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-dob-public-icon"]
${Personal_profile_dob_orgicon}                                              xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-dob-organization-icon"]
${Personal_profile_dob_privateicon}                                              xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-dob-private-icon"]
${Personal_profile_dob_public}                                            xpath= (//android.view.ViewGroup[@resource-id="personal-profile-userprivacy-dob-public"])[1]
${Personal_profile_dob_organisation}                                      xpath= (//android.view.ViewGroup[@resource-id="personal-profile-userprivacy-dob-public"])[2]
${Choose_any_org}                                                         Choose any one organization
${Choose_any_org_Ok}                                                      xpath=  //android.widget.Button[@resource-id="android:id/button1"]
${Personal_profile_dob_organisation_Selectall}                            xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-dob-public-select-all-btn"]
${Personal_profile_dob_private}                                           xpath= (//android.view.ViewGroup[@resource-id="personal-profile-userprivacy-dob-organization"])[3]
${Personal_profile_dob_closebutton}                                       xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-popup-close-btn"]
${Personal_profile_About_BackNaviga}

##### My Profile Contact #####

${Personal_profile_Contact_Edit}                                          xpath= //android.view.ViewGroup[@resource-id="profile-btn-contact-edit"]
${Personal_profile_Number}                                                xpath= //android.widget.EditText[@resource-id="profile-input-contact-number"]
${Personal_profile_Email}                                                 xpath= //android.widget.EditText[@resource-id="profile-input-email"]
${Personal_profile_Contact_Save}                                          xpath= //android.view.ViewGroup[@resource-id="save-btn"]
${Personal_profile_Contact_publicicon}                                    xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-phone-public-icon"]
${Personal_profile_Contact_orgicon}                                       xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-phone-organization-icon"]
${Personal_profile_Contact_privateicon}                                       xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-phone-private-icon"]
${Personal_profile_contact_public}                                            xpath= (//android.view.ViewGroup[@resource-id="personal-profile-userprivacy-phone-public"])[1]
${Personal_profile_contact_organisation}                                      xpath= (//android.view.ViewGroup[@resource-id="personal-profile-userprivacy-phone-public"])[2]
${Choose_any_org}                                                         Choose any one organization
${Choose_any_org_Ok}                                                      xpath=  //android.widget.Button[@resource-id="android:id/button1"]
${Personal_profile_phone_organisation_Selectall}                            xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-phone-public-select-all-btn"]
${Personal_profile_phone_private}                                           xpath= (//android.view.ViewGroup[@resource-id="personal-profile-userprivacy-phone-organization"])[3]
${Personal_profile_phone_closebutton}                                       xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-popup-close-btn"]

##### My Profile Email #####
${Personal_profile_email_publicicon}                                    xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-email-public-icon"]
${Personal_profile_email_orgicon}                                       xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-email-organization-icon"]
${Personal_profile_email_privateicon}                                       xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-email-private-icon"]
${Personal_profile_email_public}                                            xpath= (//android.view.ViewGroup[@resource-id="personal-profile-userprivacy-email-public"])[1]
${Personal_profile_email_organisation}                                      xpath= (//android.view.ViewGroup[@resource-id="personal-profile-userprivacy-email-public"])[2]
${Choose_any_org}                                                         Choose any one organization
${Choose_any_org_Ok}                                                      xpath=  //android.widget.Button[@resource-id="android:id/button1"]
${Personal_profile_email_organisation_Selectall}                            xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-email-public-select-all-btn"]
${Personal_profile_email_private}                                           xpath= (//android.view.ViewGroup[@resource-id="personal-profile-userprivacy-email-organization"])[3]
${Personal_profile_email_closebutton}                                       xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-popup-close-btn"]
${Personal_profile__contact_BackNaviga}

##### My Profile Address #####
${Personal_profile_address_publicicon}                                    xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-address-public-icon"]
${Personal_profile_address_orgicon}                                       xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-address-organization-icon"]
${Personal_profile_address_privateicon}                                       xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-address-private-icon"]
${Personal_profile_address_public}                                            xpath= (//android.view.ViewGroup[@resource-id="personal-profile-userprivacy-address-public"])[1]
${Personal_profile_address_organisation}                                      xpath= (//android.view.ViewGroup[@resource-id="personal-profile-userprivacy-address-public"])[2]
${Choose_any_org}                                                         Choose any one organization
${Choose_any_org_Ok}                                                      xpath=  //android.widget.Button[@resource-id="android:id/button1"]
${Personal_profile_address_organisation_Selectall}                            xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-address-public-select-all-btn"]
${Personal_profile_address_private}                                           xpath= (//android.view.ViewGroup[@resource-id="personal-profile-userprivacy-address-organization"])[3]
${Personal_profile_address_closebutton}                                       xpath= //android.view.ViewGroup[@resource-id="personal-profile-userprivacy-popup-close-btn"]
${Personal_profile_BackNaviga}                                                xpath= //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView


##### My Profile RelationShip #####
${Relationship_Edit}                    xpath= //android.view.ViewGroup[@resource-id="personal-profile-relationship-card-edit-btn"]
${Relationship_dropdown}                    xpath= //android.view.ViewGroup[@resource-id="relationship-partner-marrital-status-dropdown"]
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
${Address_Country_Input}                                xpath= //android.widget.EditText[@resource-id="search-input-dropdown"]
${Address_State}                                        xpath= //android.view.ViewGroup[@resource-id="profile-dropdown-state"]
${Address_State_Input}                                  xpath= //android.widget.EditText[@resource-id="search-input-dropdown"]
${My_Profile_EditProfile_Address_State}                 xpath= //android.view.ViewGroup[@resource-id="profile-dropdown-state"]
${My_Profile_EditProfile_Address_City}                  xpath= //android.view.ViewGroup[@resource-id="profile-dropdown-city"]
${My_Profile_EditProfile_Address_Street}                xpath= //android.widget.EditText[@resource-id="profile-dropdown-street"]
${My_Profile_EditProfile_Address_Zipcode}               xpath= //android.widget.EditText[@resource-id="profile-input-zipcode"]
${My_Profile_EditProfile_Address_Save}                  xpath= //android.view.ViewGroup[@resource-id="save-btn"]
${My_Profile_EditProfile_Address_BackNaviga}

${SCREENSHOT_PATH}                                      C:/Users/Steffy/Desktop/screenshot.png
${My_Profile_MyPosts}                                   xpath=  //android.view.ViewGroup[@resource-id="profile-btn-mypost"]
${My_Profile_MyPosts_BackNavigation}                    xpath=  //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${My_Profile_MyPosts_Threedot}                          xpath=  //android.widget.ImageView[@resource-id="-0-threedot-btn"]
${My_Profile_MyPosts_Title1}                             xpath=  //android.widget.TextView[@resource-id="my-post-feed-0-title-text"]
${My_Profile_MyPosts_Like1}                              xpath=  //android.view.ViewGroup[@resource-id="my-post-feed-0-like-icon"]
${My_Profile_MyPosts_Comment1}                           xpath=  //android.view.ViewGroup[@resource-id="my-post-feed-0-comment-btn"]
${My_Profile_MyPosts_Comment1_LIKE}                      xpath=  //android.view.ViewGroup[@resource-id="individual-post-like-count-container"]
${My_Profile_MyPosts_Comment1_comment}                      xpath=  //android.widget.EditText[@resource-id="individual-post-comment-input"]
${My_Profile_MyPosts_Comment1_OK}                        xpath= //android.view.ViewGroup[@resource-id="individual-post-comment-icon"]
${My_Profile_MyPosts_Back}                               xpath= //android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.ImageView
${My_Profile_MyPosts_Description1}                       xpath= //android.widget.TextView[@resource-id="my-post-feed-0-description-text"]
${My_Profile_MyPosts_Comment1_count}                     xpath=  //android.view.ViewGroup[@resource-id="my-post-feed-0-view-comment-btn"]
${My_Profile_MyPosts_Share1}                             xpath=  //android.view.ViewGroup[@resource-id="-0-share-btn"]
${My_Profile_MyPosts_Title2}                             xpath=  //android.widget.TextView[@resource-id="-1-title-text"]
${My_Profile_MyPosts_Like2}                              xpath=  //android.view.ViewGroup[@resource-id="-1-like-btn"]
${My_Profile_MyPosts_Comment2}                           xpath=  //android.view.ViewGroup[@resource-id="-1-comment-btn"]
${My_Profile_MyPosts_Share2}                             xpath=  //android.view.ViewGroup[@resource-id="-1-share-btn"]

${Myprayers_Card1}                                     xpath=  //android.view.ViewGroup[@resource-id="my-prayers-feed-0"]
${Myprayers_description1}                              xpath=  //android.widget.TextView[@resource-id="my-prayers-feed-0-description-text"]

${My_Profile_MyPrayers}                                 xpath=  //android.view.ViewGroup[@resource-id="profile-btn-myprayer"]
${My_Profile_MyPrayers_BackNavigation}                  xpath=   //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView

${My_Profile_MyPrayers_Like_pray1}                        xpath=  //android.view.ViewGroup[@resource-id="my-prayers-feed-0-pray-container-btn"]
${My_Profile_MyPrayers_Comment1}                          xpath=  //android.view.ViewGroup[@resource-id="my-prayers-feed-0-comment-btn"]
${Myprayer_Coment_Backnavi}                               xpath=  //android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.ImageView
${comment_send}                                           xpath=  //android.view.ViewGroup[@resource-id="individual-post-comment-icon"]
${comment_giving}                                          xpath=  //android.widget.EditText[@resource-id="individual-post-comment-input"]
${My_Profile_MyPrayers_Update1}
${My_Profile_MyPrayers_ViewFullPrayer1}
${My_Profile_MyPrayers_cardfull2}                      xpath=  //android.widget.TextView[@resource-id,'-1']
${My_Profile_MyPrayers_Groupname2}                     xpath=  //android.widget.TextView[@resource-id,'-1-title-text']
${My_Profile_MyPrayers_Threedot2}                      xpath=  //android.widget.ImageView[@resource-id,'-1-threedot-btn']
${My_Profile_MyPrayers_Like_pray2}                     xpath=  //android.view.ViewGroup[@resource-id,'-1-pray-container-btn']
${My_Profile_MyPrayers_Comment2}                       xpath=  //android.view.ViewGroup[@resource-id,'-1-pray-container-btn']
${My_Profile_MyPrayers_Update2_like}                   xpath=  //android.view.ViewGroup[@resource-id,'-1-comment-btn']
${My_Profile_MyPrayers_Update2_Comment}
${My_Profile_MyPrayers_ViewFullPrayer2}                xpath=  //android.view.ViewGroup[@resource-id,'-1-view-full-prayer-btn']                     


${My_Profile_SavedItems}                               xpath=  //android.view.ViewGroup[@resource-id="profile-btn-saveditems"]                           
${My_Profile_SavedItems_BackNavigation}                xpath=  //android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${My_Profile_BackNavigation}                           xpath=  //android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${Main_page_News_Icon}                                 xpath=    //android.widget.Button[@resource-id="global-bottom-nav-HomeGlobalFeed"]
${news_saved}                                          xpath=  //android.view.ViewGroup[@resource-id="trending-news-pin-btn"]
${news_liked}                                          xpath=  //android.view.ViewGroup[@resource-id="trending-news-like-btn"]


${ProfileArk_Image}                                    xpath= //android.widget.ImageView[@resource-id="global-topbar-profile-picture"]

${My_Profile_SavedItems_OrgName}
${My_Profile_SavedItems_threedot}
${My_Profile_SavedItems_threedot_delete}
${My_Profile_SavedItems_threedot_report}
${My_Profile_SavedItems_threedot_save}
${My_Profile_SavedItems_Like}
${My_Profile_SavedItems_Comment}
${My_Profile_SavedItems_share}

${My_Profile_Following}                                 xpath=  //android.view.ViewGroup[@resource-id="profile-btn-following"]
${My_Profile_Following_BackNavigation}                  xpath=  //android.view.ViewGroup[@resource-id="following-btn-back-icon"]
${My_Profile_Following_View}                            xpath=  //android.view.ViewGroup[@resource-id="my-profile-following-card"]
${My_Profile_Following_group}                           xpath= //android.widget.TextView[@resource-id="profile-following-card-Testing-text"]
${My_Profile_Following_group_Backnavi}                  xpath=  //android.view.ViewGroup[@resource-id="organization-detail-btn-back-icon"]
${My_Profile_Backnavi}                                  xpath=  //android.view.ViewGroup[@resource-id="my-profile-btn-back-icon"]

${My_Profile_Settings}                                  xpath=  //android.view.ViewGroup[@resource-id="profile-btn-settings"]
${My_Profile_Settings_Accountsettings}                  xpath=  //android.view.ViewGroup[@resource-id="account-settings-btn"]
${My_Profile_Settings_Accountsettings_navigat}          xpath=  //android.view.ViewGroup[@resource-id="account-settings-btn-back-icon"]
${Setting_back}                                         xpath=  //android.view.ViewGroup[@resource-id="settings-btn-back-icon"]
${My_Profile_Settings_Languagepreference}               xpath=  //android.view.ViewGroup[@resource-id="language-preference-btn"]
${My_Profile_Languagepreference_LanguageUnderstand}     xpath=  //android.view.ViewGroup[@resource-id="language-understand-btn"]
${which_language}                                       xpath=  //android.view.ViewGroup[@resource-id="profile-dropdown-select-language"]
${My_Profile_Languagepreference_Translate}              xpath=  //android.view.ViewGroup[@resource-id="language-translate-btn"]
@{languages}                                            Afrikaans    Albanian    Amharic    Arabic    Armenian    Azerbaijani    Basque    Belarusian    Bengali    Bosnian Bulgarian    Burmese    Catalan    Cebuano    Chichewa    Chinese    Corsican    Croatian    Czech    Danish Dutch    English    Esperanto    Estonian    Filipino    Finnish    French    Galician    Georgian    German Greek    Gujarati    Haitian Creole    Hausa    Hawaiian    Hebrew    Hindi    Hmong    Hungarian    Icelandic Igbo    Indonesian    Irish    Italian    Japanese    Javanese    Kannada    Kazakh    Khmer    Kinyarwanda Korean    Kurdish    Kyrgyz    Lao    Latin    Latvian    Lithuanian    Luxembourgish    Macedonian    Malagasy Malay    Malayalam    Maltese    Maori    Marathi    Mongolian    Nepali    Norwegian    Oriya    Pashto  Persian    Polish    Portuguese    Punjabi    Romanian    Russian    Samoan    Scottish Gaelic    Serbian  Sesotho    Shona    Sindhi    Sinhala    Slovak    Slovenian    Somali    Spanish    Sundanese    Swahili   Swedish    Tajik    Tamil    Telugu    Thai    Turkish    Turkmen    Ukrainian    Urdu    Uzbek   Vietnamese    Welsh    Xhosa    Yiddish    Yoruba    Zulu




${cancel_drop}                                          xpath=  //android.view.ViewGroup[@resource-id="btn-dropdown-close"]
${save_language}                                        xpath=  //android.view.ViewGroup[@resource-id,'language-btn-selecet-dropdown']
${Language_prefer_navigation}                           xpath=  //android.view.ViewGroup[@resource-id="language-preferences-btn-back-icon"]
${Translate_button}                                     xpath=  //android.widget.TextView[@resource-id="language-translate-btn-text"] 
${input_trans}                                          xpath=  //android.widget.EditText[@resource-id="search-input-dropdown"]
${tanslate_stories}                                     xpath=  //android.view.ViewGroup[@resource-id="select-language-drop-down"]
${input_trans}                                          xpath=  //android.widget.EditText[@resource-id="search-input-dropdown"]
${save_translate}                                       xpath=  //android.widget.EditText[@resource-id="language-btn-selecet-dropdown"]
${My_Profile_Settings_ChangePassword}                   xpath=  //android.view.ViewGroup[@resource-id="profile-btn-change-password"]
${My_Profile_Settings_Deactivate}                       xpath=   //android.view.ViewGroup[@resource-id="profile-btn-deactivation"]
${My_Profile_Settings_CurrentPassword}                  xpath= //android.widget.EditText[@resource-id="profile-input-current-password"]
${My_Profile_EyeBall_CurrentPassword}                   xpath=  //android.view.ViewGroup[@resource-id="profile-input-current-password-password-eye-on"]
${My_Profile_Settings_NewPassword}                      xpath= //android.widget.EditText[@resource-id="profile-input-new-password"]
${My_Profile_EyeBall_NewPassword}                       xpath= 	//android.view.ViewGroup[@resource-id="profile-input-new-password-password-eye-on"]
${My_Profile_Settings_RePassword}                       xpath= //android.widget.EditText[@resource-id="profile-input-re-enter-password"]
${My_Profile_EyeBall_RePassword}                        xpath= 	//android.view.ViewGroup[@resource-id="profile-input-re-enter-password-password-eye-on"]
${My_Profile_Save}                                      xpath=  //android.view.ViewGroup[@resource-id="language-btn-selecet-dropdown"]
${My_Profile_ChangeAcccountSetting_BackNavig}           xpath=  //android.view.ViewGroup[@resource-id="account-settings-btn-back-icon"]
${My_Profile_Settings_BackNavigation}                   xpath=  //android.view.ViewGroup[@resource-id="settings-btn-back-icon"]
${My_Profile_Settings_Deactivate_Cancel}                xpath=  //android.view.ViewGroup[@resource-id="profile-btn-continue"]
${My_Profile_Settings_Deactivate_Continuetodeactive}    xpath=  //android.view.ViewGroup[@resource-id="profile-btn-cancel"]
${My_Profile_Settings_Deactivate_Navigation}            xpath= //android.view.ViewGroup[@resource-id="manage-account-btn-back-icon"]
${Deactivate_Manage_account}



${My_Profile_LogOut}                                    xpath= //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[6]
${My_Profile_LogOut_Logoutpop}                           xpath= //android.view.ViewGroup[@resource-id,'popUp-btn-positive']
${My_Profile_LogOut_Cancelpop}     
${contineubutton}                                       xpath= //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[3] 
