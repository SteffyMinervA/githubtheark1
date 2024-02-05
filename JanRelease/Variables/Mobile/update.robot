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
${Username}                                             steffy17minerva@gmail.com
${Password}                                             Tahaan@05

# ${elements}                                             //android.view.ViewGroup[@resource-id="member-list-user-card"]

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
${BIRTH_DATE_INPUT}                                     xpath= //android.widget.EditText[@resource-id='android:id/numberpicker_input']
${start_date}                                           Jan 01 1900
${end_date}                                             Dec 30 2009

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
${Login_Password_eyeball}                               xpath= //android.view.ViewGroup[@resource-id='login-input-password-password-eye-on']
${Login_button}                                         xpath= //android.view.ViewGroup[@resource-id='btn-login']
${Main_Home_Tab}                                        global-bottom-bar-container
${Main_Home_Tab_Search_Button}                          xpath= //android.view.ViewGroup[contains(@resource-id,'global-topbar-search')]
${Main_Search_Button_Navigate}                          xpath= //android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.EditText
${Main_Search_Button_Navigate1}                         xpath= /android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
${Login_NotRegistered}                                  xpath= //android.widget.TextView[contains(@text,"Not registered? Signup here")]

#####My profile######
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

${Relationship_Edit}                    xpath= //android.view.ViewGroup[@resource-id="personal-profile-relationship-card-edit-btn"]
${Relationship_dropdown}                    xpath= //android.view.ViewGroup[@resource-id="relationship-partner-marrital-status-dropdown"]














@{countries}                                          Afghanistan  Albania  Algeria  Andorra  Angola  Antigua and Barbuda  Argentina  Armenia  Australia  Austria  Azerbaijan  Bahamas  Bahrain  Bangladesh  Barbados  Belarus  Belgium  Belize  Benin  Bhutan  Bolivia  Bosnia and Herzegovina  Botswana  Brazil  Brunei  Bulgaria  Burkina Faso  Burundi  Cabo Verde  Cambodia  Cameroon  Canada  Central African Republic  Chad  Chile  China  Colombia  Comoros  Congo  Costa Rica  Croatia  Cuba  Cyprus  Czechia  Denmark  Djibouti  Dominica  Dominican Republic  East Timor (Timor-Leste)  Ecuador  Egypt  El Salvador  Equatorial Guinea  Eritrea  Estonia  Eswatini  Ethiopia  Fiji  Finland  France  Gabon  Gambia  Georgia  Germany  Ghana  Greece  Grenada  Guatemala  Guinea  Guinea-Bissau  Guyana  Haiti  Honduras  Hungary  Iceland  India  Indonesia  Iran  Iraq  Ireland  Israel  Italy  Jamaica  Japan  Jordan  Kazakhstan  Kenya  Kiribati  Korea, North  Korea, South  Kosovo  Kuwait  Kyrgyzstan  Laos  Latvia  Lebanon  Lesotho  Liberia  Libya  Liechtenstein  Lithuania  Luxembourg  Madagascar  Malawi  Malaysia  Maldives  Mali  Malta  Marshall Islands  Mauritania  Mauritius  Mexico  Micronesia  Moldova  Monaco  Mongolia  Montenegro  Morocco  Mozambique  Myanmar (Burma)  Namibia  Nauru  Nepal  Netherlands  New Zealand  Nicaragua  Niger  Nigeria  North Macedonia  Norway  Oman  Pakistan  Palau  Panama  Papua New Guinea  Paraguay  Peru  Philippines  Poland  Portugal  Qatar  Romania  Russia  Rwanda  Saint Kitts and Nevis  Saint Lucia  Saint Vincent and the Grenadines  Samoa  San Marino  Sao Tome and Principe  Saudi Arabia  Senegal  Serbia  Seychelles  Sierra Leone  Singapore  Slovakia  Slovenia  Solomon Islands  Somalia  South Africa  South Sudan  Spain  Sri Lanka  Sudan  Suriname  Sweden  Switzerland  Syria  Taiwan  Tajikistan  Tanzania  Thailand  Togo  Tonga  Trinidad and Tobago  Tunisia  Turkey  Turkmenistan  Tuvalu  Uganda  Ukraine  United Arab Emirates  United Kingdom  United States  Uruguay  Uzbekistan  Vanuatu  Vatican City  Venezuela  Vietnam  Yemen  Zambia  Zimbabwe
@{indian_states}    Andhra Pradesh    Arunachal Pradesh    Assam    Bihar    Chhattisgarh
...    Goa    Gujarat    Haryana    Himachal Pradesh    Jharkhand
...    Karnataka    Kerala    Madhya Pradesh    Maharashtra    Manipur
...    Meghalaya    Mizoram    Nagaland    Odisha    Punjab
...    Rajasthan    Sikkim    Tamil Nadu    Telangana    Tripura
...    Uttar Pradesh    Uttarakhand    West Bengal

${My_Org}                                                xpath= //android.widget.Button[@resource-id="global-bottom-nav-HomeMyOrganizations"]
${My_Org_Navigation}                                     xpath= //android.view.ViewGroup[@resource-id="screen-my-org-list-0-text-title"]
${My_Org_Create_Group}                                   xpath= //android.view.ViewGroup[@resource-id="organizationprofile-btn-creategroup"]
${Create_Group_Browser}                                  xpath= //android.view.ViewGroup[@resource-id="create-group-choose-picture-btn-browse"]
${Create_Group_Browser_Allow}                            xpath= //android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
${Create_Group_Browser_Ok}                                xpath= //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/androidx.appcompat.widget.LinearLayoutCompat
${Create_Group_Browser_Dontallow}                        xpath= //android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_deny_button"]

${My_Org_Create_Group_Name}                              xpath= //android.widget.EditText[@resource-id="create-group-name-input"]
${My_Org_Create_Group_Name_Name}                         Automation The Ark
${My_Org_Create_Group_Description}                       xpath= //android.widget.EditText[@resource-id="create-group-description-input"]
${My_Org_Create_Group_Description_Descrip}               Automation - Robot Framework 
${My_Org_Create_Group_AddModerator}                      xpath= //android.view.ViewGroup[@resource-id="create-group-browse-btn"]
${My_Org_Create_Group_AddModerator_typesearch}           xpath= //android.view.ViewGroup[@resource-id="select-moderator-input"]
${My_Org_Create_Group_AddModerator_choose}               xpath= //android.view.ViewGroup[@resource-id="-action-btn"]
${My_Org_Create_Group_Create_Button}                     xpath= //android.view.ViewGroup[@resource-id="-action-btn"]
${My_Org_Create_Group_seeall}                            xpath= //android.view.ViewGroup[@resource-id="organizationprofile-btn-seeall"]
${My_Org_Create_Group_seeall_list}                       xpath= //android.view.ViewGroup[@resource-id="-btn-navigation"]

${Inside_group_editpic}                                  xpath= //android.view.ViewGroup[@resource-id="-btn-editpicture"]
${Inside_group_createpost}                               xpath= //android.view.ViewGroup[@resource-id="group-profile-create-post-btn"]
${Inside_group_addprayer}                                xpath= //android.view.ViewGroup[@resource-id="group-profile-add-prayer-request-btn"]
${Inside_group_Post}                                     xpath= //android.view.ViewGroup[@resource-id="-action-btn"]
${Inside_group_Image}                                    xpath= //android.view.ViewGroup[@resource-id="create-post-add-image-icon-btn"]
${Inside_group_Video}                                    xpath= //android.view.ViewGroup[@resource-id="create-post-video-icon-btn"]
${Inside_group_Post_Button}                              xpath= //android.view.ViewGroup[@resource-id="-action-btn"]
${Inside_group_Audio}                                    xpath= //android.view.ViewGroup[@resource-id="create-post-sound-icon-btn"]
${Inside_group_text}                                     xpath= //android.view.ViewGroup[@resource-id="create-post-announcement-input"]
${prayer_request}                                        xpath= //android.view.ViewGroup[@resource-id="prayer-request-testimonials-prayer-tab-Request"]
${prayer_update}                                         xpath= //android.view.ViewGroup[@resource-id="prayer-request-testimonials-prayer-tab-Update"]
${prayer_testimonal}                                     xpath= //android.view.ViewGroup[@resource-id="prayer-request-testimonials-prayer-tab-Testimony"]
${prayer_subject}                                        xpath= //android.widget.EditText[@resource-id="prayer-request-testimonials-subject-input"]
${prayer_message}                                        xpath= //android.widget.EditText[@resource-id="prayer-request-testimonials-message-input"]
${prayer_submit}                                         xpath= //android.view.ViewGroup[@resource-id="prayer-request-testimonials-submit-btn"]
${prayer_image}                                          xpath= //android.view.ViewGroup[@resource-id="prayer-request-testimonials-add-image-icon-btn"]
${prayer_video}                                          xpath= //android.view.ViewGroup[@resource-id="prayer-request-testimonials-video-icon-btn"]
${prayer_audio}                                          xpath= //android.view.ViewGroup[@resource-id="prayer-request-testimonials-sound-icon-btn"]
${prayer_update_subject}                                 xpath= //android.widget.EditText[@resource-id="prayer-request-testimonials-update-tap-input"]
${prayer_update_card}                                    xpath= //android.widget.TextView[@resource-id="prayer-request-testimonials-card-title-text"]
${group_mainfeed_post}                                      //android.widget.ImageView[@resource-id="group-profile-all-tap-feed-threedot-btn"]
${group_mainfeed_post_like}                                      //android.view.ViewGroup[@resource-id="group-profile-all-tap-feed-like-btn"]
${group_mainfeed_post_comment}                                      //android.view.ViewGroup[@resource-id="group-profile-all-tap-feed-comment-btn"]
${group_mainfeed_post_share}                                      //android.view.ViewGroup[@resource-id="group-profile-all-tap-feed-share-btn"]
${group_mainfeed_comment_Three_dot}                                xpath= //android.widget.ImageView[@resource-id="-threedot-btn"]
${group_mainfeed_Comment_like}                            xpath= //android.view.ViewGroup[@resource-id="undefined-like-btn"]
${group_mainfeed_Comment_share}                            xpath= //android.view.ViewGroup[@resource-id="-share-icon"]





${pinnedpost_threedot}                                  xpath= //android.widget.ImageView[@resource-id="-threedot-btn"]
${pinnedpost_readmore}                                  xpath= //android.widget.TextView[@resource-id="-read-more-btn"]
${pinnedpost_readmore_Commentview}                      xpath= //android.view.ViewGroup[@resource-id="-view-comment-btn"]
${pinnedpost_like}                                      xpath= //android.view.ViewGroup[@resource-id="-like-btn"]
${pinnedpost_comment}                                      xpath= //android.view.ViewGroup[@resource-id="-comment-btn"]
${pinnedpost_share}                                      xpath= //android.view.ViewGroup[@resource-id="-share-btn"]



  

${My_Org_Front_page_camera}                                    xpath= //android.view.ViewGroup[@resource-id="organizationprofile-btn-editpicture"]
${My_Org_Front_Three_dot}
${My_Org_Front_Three_dot}
${My_Org_Front_Three_dot}
${My_Org_Front_Three_dot}
${My_Org_Front_Three_dot}



${My_Org_Front_Three_dot}                                xpath= //android.widget.ImageView[@resource-id="-threedot-btn"]
${My_Org_Front_Three_dot_Delete}                         xpath= //android.widget.TextView[contains(@text,'Delete')]
${My_Org_Front_Three_dot_}                               xpath= //android.widget.ImageView[@resource-id="-delete-btn"]
${My_Org_Front_Three_dot_Report}
${My_Org_Front_Three_dot_Save}                            xpath= //android.widget.ImageView[@resource-id="-save-btn"]
${My_Org_Front_Three_dot_unpin}
${My_Org_Front_Like}                                     xpath= //android.view.ViewGroup[@resource-id="org-profile-feed-like-btn"]
${My_Org_Comment}                                        xpath= //android.view.ViewGroup[@resource-id="org-profile-feed-comment-btn"]
${My_Org_Comment_TxtComment}                             xpath= 
${My_Org_Inside_Comment_threedot}                            xpath= //android.view.ViewGroup[@resource-id="-threedot-btn"]
${My_Org_Inside_Comment_like}                            xpath= //android.view.ViewGroup[@resource-id="undefined-like-btn"]
${My_Org_Inside_Comment_share}                            xpath= //android.view.ViewGroup[@resource-id="-share-icon"]


${My_Org_Three_dot}                                      xpath= //android.widget.ImageView[@resource-id="-threedot-btn"]

${My_Org_Invite}                                   xpath= //android.view.ViewGroup[@resource-id="organizationprofile-btn-invitemember"]
${My_Org_Invite_AddMember}                         xpath=  //android.widget.EditText[@resource-id="add-member-invite-input"]
${My_Org_Invite_AddMember_More}                    xpath=  //android.view.ViewGroup[@resource-id="add-member-add-more-btn"]
${My_Org_Invite_Button}                            xpath= //android.view.ViewGroup[@resource-id="-action-btn"]

${My_Org_front_Announcement}                                    xpath= //android.view.ViewGroup[@resource-id="org-profile-announcement-input-input-post"]
${My_Org_Announcement_text}                               xpath= //android.view.ViewGroup[@resource-id="create-post-announcement-input"]
${My_Org_Select member}                                   xpath= //android.view.ViewGroup[@resource-id="create-post-selected-Members-btn"] 
${My_Org_member_only}                                     xpath= //android.view.ViewGroup[@resource-id="post-member-visibility"]
${My_Org_member_Catergory}                                xpath= //android.view.ViewGroup[@resource-id="create-post-category-Environment"]
${My_Org_member_Anyone}                                   xpath= //android.view.ViewGroup[@resource-id="post-anyone-visibility"]
${My_Org_member_Category_New}                             xpath= //android.view.ViewGroup[@resource-id="create-post-category-New"]
${My_Org_member_Post}                                     xpath= //android.view.ViewGroup[@resource-id="-action-btn"]
${My_Org_member_Image}                                    xpath= //android.view.ViewGroup[@resource-id="create-post-add-image-icon-btn"]
${My_Org_member_Video}                                    xpath= //android.view.ViewGroup[@resource-id="create-post-video-icon-btn"]
${My_Org_member_Video_Select}                             xpath= //android.widget.FrameLayout[@content-desc="Video taken on Nov 8, 2023, 4:59:03 AM with duration 00:37"]/androidx.cardview.widget.CardView/android.widget.FrameLayout/android.widget.ImageView
${My_Org_member_Video_Select_Thumb}                       xpath= //android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView
${My_Org_member_Post_Button}                              xpath= //android.view.ViewGroup[@resource-id="-action-btn"]
${My_Org_member_Audio}                                    xpath= //android.view.ViewGroup[@resource-id="create-post-sound-icon-btn"]
${My_Org_member_Audio_Select}                             xpath= //android.widget.ImageView[@resource-id="com.google.android.documentsui:id/icon_thumb"]


${My_Org_About}                                           xpath=  //android.widget.TextView[contains(@text, 'About')]
${My_Org_About_Global_Admin}                              xpath=  //android.view.ViewGroup[@resource-id="organization-profile-about-global-admin"]
${My_Org_About_About}                                     xpath=  //android.view.ViewGroup[@resource-id="org-profile-about"]
${My_Org_About_About_Admin}                               

# ${My_Org_About_Global_Admin}                              xpath=  //android.widget.TextView[contains(@text, 'Manage Global Admins')]
${My_Org_About_Global_Admin_Navigation}                   xpath= //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${My_Org_About_Edit}                                       xpath=  //android.widget.TextView[contains(@text, 'Edit')]
${My_Org_About_Edit_About}                                 xpath=  //android.widget.EditText[contains(@text, 'chcjcivkblvjx')]
${My_Org_About_Edit_About_Save}                            xpath= //android.view.ViewGroup[@resource-id="global-navigator-Save"]
${My_Org_About_Admin_See_all}                              xpath=  //android.widget.TextView[contains(@text, 'See all')]
${My_Org_About_Admin_naviagtion}                           xpath= //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${My_Org_About_Member_See_all}                             xpath= //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[4]/android.view.ViewGroup[2]/android.widget.TextView
${My_Org_About_Member_Change_UserRole}                     xpath=  //android.view.ViewGroup[@resource-id="change-user-role-icon-btn"]
${My_Org_About_Member_naviagtion}                          xpath=  //android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView           

${My_Org_Contact}                                           xpath=  //android.widget.TextView[contains(@text, 'Contact')]
${My_Org_Contact_Edit}                                      xpath=  //android.widget.TextView[contains(@text, 'Edit')]
${My_Org_Contact_Email}                                     xpath=  //android.widget.EditText[contains(@text, 'test@hotmail.com')]
${My_Org_Contact_Phone}                                      xpath=  //android.widget.EditText[contains(@text, '456666666')]
${My_Org_Contact_Website}                                      xpath=  //android.widget.EditText[contains(@text, 'https://justo.com')]
${My_Org_Contact_Contry}                                      xpath=  //android.widget.TextView[contains(@text, 'China')]
${My_Org_Contact_state}                                      xpath=  //android.widget.TextView[contains(@text, 'Xinjiang')]
${My_Org_Contact_city}                                       xpath=  //android.widget.TextView[contains(@text, 'Turpan Diqu')]
${My_Org_Contact_Save}                                      xpath= //android.view.ViewGroup[@resource-id="global-navigator-Save"]

${My_Org_Donate}                                           xpath=  //android.widget.TextView[contains(@text, 'Donate')]
${My_Org_Donate_Readmore}                                  xpath= //android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView[3]

${My_Org_Foll}                                               xpath= //android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.HorizontalScrollView/android.view.ViewGroup/android.view.ViewGroup[4]
${My_Org_Followers_one}                                      xpath= //android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]
${My_Org_Followers_two}                                      xpath= //android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]
${My_Org_Followers_three}                                    xpath= //android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]










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





${My_Profile_MyPosts}                                   xpath=  //android.view.ViewGroup[@resource-id="profile-btn-mypost"]
${My_Profile_MyPosts_BackNavigation}
${My_Profile_MyPosts_Threedot}                          xpath=  //android.widget.ImageView[@resource-id="-0-threedot-btn"]
${My_Profile_MyPosts_Title1}                             xpath=  //android.widget.TextView[@resource-id="-0-title-text"]
${My_Profile_MyPosts_Like1}                              xpath=  //android.view.ViewGroup[@resource-id="-0-like-btn"]
${My_Profile_MyPosts_Comment1}                           xpath=  //android.view.ViewGroup[@resource-id="-0-comment-btn"]
${My_Profile_MyPosts_Comment1_LIKE}                      xpath=  //android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.EditText
${My_Profile_MyPosts_Comment1_OK}                        xpath= //android.view.ViewGroup[3]/android.view.ViewGroup[3]/android.widget.ImageView
${My_Profile_MyPosts_Back}                               xpath= //android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.ImageView
${My_Profile_MyPosts_Comment1_count}                     xpath=  //android.view.ViewGroup[@resource-id="-0-view-comment-btn"]
${My_Profile_MyPosts_Share1}                             xpath=  //android.view.ViewGroup[@resource-id="-0-share-btn"]
${My_Profile_MyPosts_Title2}                             xpath=  //android.widget.TextView[@resource-id="-1-title-text"]
${My_Profile_MyPosts_Like2}                              xpath=  //android.view.ViewGroup[@resource-id="-1-like-btn"]
${My_Profile_MyPosts_Comment2}                           xpath=  //android.view.ViewGroup[@resource-id="-1-comment-btn"]
${My_Profile_MyPosts_Share2}                             xpath=  //android.view.ViewGroup[@resource-id="-1-share-btn"]




@{all_posts}
...    Hi everyone [Image]   [Video]  
...    Hi all [Image]   [Video]   [Audio]
...    Hi everyone     Good afternoon      Take care     [Image]   [Video]  [Audio]
...    


${post}                            xpath=  //android.widget.TextView[contains(text,'Hi everyone')]
${image_pattern}

${My_Profile_MyPrayers}                                 xpath=  //android.view.ViewGroup[@resource-id,'profile-btn-myprayer']
${My_Profile_MyPrayers_BackNavigation}                  xpath=    //android.view.ViewGroup[@resource-id,'-0-comment-btn']
${My_Profile_MyPrayers_cardfull1}                       xpath=  //android.widget.TextView[@resource-id,'-0']
${My_Profile_MyPrayers_Groupname1}                       xpath=  //android.widget.TextView[@resource-id,'-0-title-text']
${My_Profile_MyPrayers_Threedot1}                        xpath=  //android.widget.ImageView[@resource-id,'-0-threedot-btn']
${My_Profile_MyPrayers_Like_pray1}                        xpath=  //android.view.ViewGroup[@resource-id,'-0-pray-container-btn']
${My_Profile_MyPrayers_Comment1}                          xpath=  //android.view.ViewGroup[@resource-id,'-0-comment-btn']
${My_Profile_MyPrayers_Update1}
${My_Profile_MyPrayers_ViewFullPrayer1}
${My_Profile_MyPrayers_cardfull2}                       xpath=  //android.widget.TextView[@resource-id,'-1']
${My_Profile_MyPrayers_Groupname2}                       xpath=  //android.widget.TextView[@resource-id,'-1-title-text']
${My_Profile_MyPrayers_Threedot2}                        xpath=  //android.widget.ImageView[@resource-id,'-1-threedot-btn']
${My_Profile_MyPrayers_Like_pray2}                        xpath=  //android.view.ViewGroup[@resource-id,'-1-pray-container-btn']
${My_Profile_MyPrayers_Comment2}                          xpath=  //android.view.ViewGroup[@resource-id,'-1-pray-container-btn']
${My_Profile_MyPrayers_Update2_like}                     xpath=  //android.view.ViewGroup[@resource-id,'-1-comment-btn']
${My_Profile_MyPrayers_Update2_Comment}
${My_Profile_MyPrayers_ViewFullPrayer2}                          xpath=  //android.view.ViewGroup[@resource-id,'-1-view-full-prayer-btn']                     


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

${SCREENSHOT_FOLDER}                                     C:/Users/Steffy/Desktop
${SCREENSHOT_PATH}                                       C:/Users/Steffy/Desktop/screenshot.png
# ${extracted_text}                  Myt     Followers      Members    Home      About                                       


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
${contineubutton}                                       xpath= //android.view.ViewGroup[@resource-id="homeIntro-btn-Global-next"]
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
${Main_page_Profile_Icon}                               xpath=    //android.widget.ImageView[@resource-id="global-topbar-profile-picture"]
${Main_page_Global_Icon}                                //android.widget.Button[@resource-id,'global-bottom-nav-PublicFeed']
${Main_page_Private_Icon}                               xpath=    //android.widget.Button[contains(@resource-id,'global-bottom-nav-HomeMyFeed')]
${Main_page_Private_Icon_Nopost}                        xpath=    //android.widget.TextView[contains(@text,'No Posts found')]
${Main_page_MyOrg_Icon}                                 xpath=    //android.widget.Button[contains(@resource-id,'global-bottom-nav-HomeMyOrganizations')]
${Main_page_MyOrg_Icon_feed}                            xpath=    //android.widget.TextView[contains(@text,'Organizations you can follow')]
${Main_page_News_Icon}                                  xpath=    //android.widget.Button[contains(@resource-id,'global-bottom-nav-HomeGlobalFeed')]
${Main_page_More_Option}                                xpath=    //android.widget.Button[contains(@resource-id,'global-bottom-nav-GlobalMenu')]
${Create_New_Feed}                                      xpath=    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${Main_page_Floating_Button}                            btn-global-fab
${More_Option_PrayerDiary}                              xpath=    //android.view.ViewGroup[@resource-id="btn-prayer-diary-container"]
${Prayer_list}                                          xpath=   //android.widget.TextView[@text="My Prayer List"]	
${Prayer_list_getlist}                                  xpath= //androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView	
${Prayer_list_Savedreq}                                xpath=  //android.widget.TextView[@text="Saved Request"]
${Prayer_list_Savedreq_gettext}                         xpath= //android.view.ViewGroup[@resource-id="prayer-diary-feed"]/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup
${answers_prayer}                                       xpath= //android.widget.TextView[@text="Answered Prayers"]
${answers_prayer_text}                                  xpath=  //androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView
${prayer_back}                                          xpath= 	//android.view.ViewGroup[@resource-id="prayer-diary-btn-back-icon"]
${More_Option_Mygroups}                                 xpath=  //android.view.ViewGroup[@resource-id="btn-my-groups-container"]
${More_Option_Mygroups_holepage}                        xpath=   //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup
${MYGROUPS_back}                                        xpath= 	//android.view.ViewGroup[@resource-id="my-groups-btn-back-icon"]
${More_Option_PendingInvites}                           xpath=    //android.view.ViewGroup[@resource-id="btn-pending-invites-container"]
${Pending_Invites_back}                                 xpath=    //android.view.ViewGroup[@resource-id="-btn-back-icon"]
${More_Option_ArkEnterprizes}                           xpath=    //android.view.ViewGroup[contains(@resource-id,'btn-ark-enterprise-content')]
${More_Option_GroupRequest}                             xpath=    //android.view.ViewGroup[contains(@resource-id,'btn-group-requests-content')]
${More_Option_AboutArk}                                 xpath=    //android.view.ViewGroup[contains(@resource-id,'btn-about-ark-content')]
${More_Option_PrayerDiary_Navigator}                    xpath=    //android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView    
${More_Option_Mygroup_Navigator}                        xpath=    //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView    
${More_Option_PendingInvites_Navigator}                 xpath=    //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView    
${More_Option_GroupRequest}                             xpath=   //android.view.ViewGroup[@resource-id="btn-group-requests-container"]   	
${More_Option_GroupRequest_back}                        xpath= //android.view.ViewGroup[@resource-id="-btn-back-icon"]
