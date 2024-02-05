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

${My_Org}                                                xpath= //android.widget.Button[@resource-id="global-bottom-nav-HomeMyOrganizations"]
${My_Org_Navigation}                                     xpath= //android.view.ViewGroup[@resource-id="screen-my-org-list-Organizations You Global Administer-1"]

${My_Org_Create_Group}                                   xpath= //android.view.ViewGroup[@resource-id="organizationprofile-btn-creategroup"]
${Create_Group_Browser}                                  xpath= //android.view.ViewGroup[@resource-id="create-group-choose-picture-btn-browse"]
${Create_Group_Browser_Allow}                            xpath= //android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
${Create_Group_Browser_Ok}                                xpath= //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/androidx.appcompat.widget.LinearLayoutCompat
${Create_Group_Browser_Dontallow}                        xpath= //android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_deny_button"]
${Personal_profile_Image_Allow}                                          xpath= //android.widget.Button[contains(@text,'ALLOW')]
${Personal_profile_NotAllow}                                             xpath= //android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_deny_button"]
${Personal_profile_Image_Album}                                          xpath= //android.widget.TextView[contains(@text,'Albums')]
${Personal_profile_Album_Downloads}                                      xpath= //android.widget.TextView[contains(@text,'Downloads')]
${Personal_profile_Downloads_Picture}                                    xpath= //android.widget.FrameLayout[@content-desc="Photo taken on Dec 26, 2023, 6:54:52 PM"]/androidx.cardview.widget.CardView/android.widget.FrameLayout/android.widget.ImageView
${Personal_profile_Downloads_Profilepic}                                 xpath= //android.widget.Button[@content-desc="Crop"]
${SCREENSHOT_PATH}                                       C:/Users/Steffy/Desktop/screenshot.png

${My_Org_Create_Group_Name}                              xpath= //android.widget.EditText[@resource-id="create-group-name-input"]
${My_Org_Create_Group_Name_Name}                         Automation The Ark
${My_Org_Create_Group_Description}                       xpath= //android.widget.EditText[@resource-id="create-group-description-input"]
${My_Org_Create_Group_Description_Descrip}               Automation - Robot Framework 
${My_Org_Create_Group_AddModerator}                      xpath= //android.view.ViewGroup[@resource-id="create-group-browse-btn"]
${My_Org_Create_Group_AddModerator_typesearch}           xpath= //android.view.ViewGroup[@resource-id="select-moderator-input"]
${My_Org_Create_Group_AddModerator_choose}               xpath= //android.view.ViewGroup[@resource-id="-action-btn"]
${My_Org_Create_Group_Create_Button}                     xpath= //android.view.ViewGroup[@resource-id="create-group-action-btn"]
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
