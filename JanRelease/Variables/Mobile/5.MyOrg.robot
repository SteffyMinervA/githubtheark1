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
${My_Org_EditPic}                                        xpath= //android.view.ViewGroup[@resource-id="organizationprofile-btn-editpicture"]	
${Allow_button}                                          xpath= //android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
${Click_album}                                           xpath= //android.widget.LinearLayout[@content-desc="Albums"]
${Click_Downloads}                                       xpath= //androidx.recyclerview.widget.RecyclerView[@resource-id="com.google.android.providers.media.module:id/picker_tab_recyclerview"]/android.widget.LinearLayout[3]
${xpath_base}                                            xpath=  (//android.widget.ImageView[@resource-id="com.google.android.providers.media.module:id/icon_thumbnail"])[5]
	
${crop}                                                   xpath= //android.widget.Button[@content-desc="Crop"]
${text}                                                   xpath= (//android.widget.TextView[@text="The Ark - Automation"])[2]
${Invite}                                                 xpath= //android.view.ViewGroup[@resource-id="organizationprofile-btn-invitemember"]
${Container1}                                             xpath= //android.widget.EditText[@resource-id="add-member-invite-input-container"]
${Container2}                                             xpath= (//android.widget.EditText[@resource-id="add-member-invite-input-container"])[2]
${Container3}                                             xpath= (//android.view.ViewGroup[@resource-id="add-member-invite-input-container"])[3]
${Container4}                                             xpath= (//android.view.ViewGroup[@resource-id="add-member-invite-input-container"])[4]
${Container5}                                             xpath= (//android.view.ViewGroup[@resource-id="add-member-invite-input-container"])[5]
${Container6}                                             xpath= (//android.view.ViewGroup[@resource-id="add-member-invite-input-container"])[6]
${Add_More}                                               xpath= //android.view.ViewGroup[@resource-id="add-member-add-more-btn"]/android.view.ViewGroup
${Invie_Button_Click}                                     xpath= //android.view.ViewGroup[@resource-id="add-member-action-btn"]




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
${group_mainfeed_post_like}                              xpath= //android.view.ViewGroup[@resource-id="org-profile-feed-0-like-btn"]
${group_mainfeed_post_comment}                            xpath= //android.view.ViewGroup[@resource-id="org-profile-feed-0-comment-btn"]
${group_mainfeed_post_share}                                      //android.view.ViewGroup[@resource-id="group-profile-all-tap-feed-share-btn"]
${group_mainfeed_comment_Three_dot}                                xpath= //android.widget.ImageView[@resource-id="-threedot-btn"]
${group_mainfeed_Comment_like}                            xpath= //android.view.ViewGroup[@resource-id="undefined-like-btn"]
${group_mainfeed_Comment_share}                            xpath= //android.view.ViewGroup[@resource-id="-share-icon"]
	
${back}                                                    xpath=  //android.view.ViewGroup[@resource-id="individual-post-go-back-icon"]
${input}                                                   xpath= //android.widget.EditText[@resource-id="individual-post-comment-input"]
${post}                                                    xpath= //android.view.ViewGroup[@resource-id="individual-post-comment-icon"]



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
${My_Org_member_Post}                                     xpath= //android.widget.EditText[@resource-id="create-post-announcement-input"]
${My_Org_member_Image}                                    xpath= //android.view.ViewGroup[@resource-id="create-post-add-image-icon-btn"]
${My_Org_member_Video}                                    xpath= //android.view.ViewGroup[@resource-id="create-post-video-icon-btn"]
${My_Org_member_Video_Select}                             xpath= //android.widget.FrameLayout[@content-desc="Video taken on Nov 8, 2023, 4:59:03 AM with duration 00:37"]/androidx.cardview.widget.CardView/android.widget.FrameLayout/android.widget.ImageView
${My_Org_member_Video_Select_Thumb}                       xpath= //android.widget.TextView[@text="Select"]
${My_Org_member_Post_Button}                              xpath= //android.view.ViewGroup[@resource-id="create-post-action-btn"]
${My_Org_member_Audio}                                    xpath= //android.view.ViewGroup[@resource-id="create-post-sound-icon-btn"]
${My_Org_member_Audio_Select}                             xpath= //android.widget.ImageView[@resource-id="com.google.android.documentsui:id/icon_thumb"]
${Personal_profile_SelectProfile_word}                                   Allow The Ark - Staging to access photos and videos on this device?
${Personal_profile_Image_Allow}                                          xpath= //android.widget.Button[contains(@text,'ALLOW')]
${Personal_profile_NotAllow}                                             xpath= //android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_deny_button"]
${Personal_profile_Image_Album}                                          xpath= //android.widget.TextView[contains(@text,'Albums')]
${Personal_profile_Album_Downloads}                                      xpath= //android.widget.TextView[contains(@text,'Downloads')]
${Personal_profile_Downloads_Picture}                                    xpath= //android.widget.FrameLayout[@content-desc="Photo taken on Dec 26, 2023, 6:54:52 PM"]/androidx.cardview.widget.CardView/android.widget.FrameLayout/android.widget.ImageView
${Personal_profile_Downloads_Profilepic}                                 xpath= //android.widget.Button[@content-desc="Crop"]
${SCREENSHOT_PATH}                                       C:/Users/Steffy/Desktop/screenshot.png

${My_Org_About}                                           xpath=  //android.widget.TextView[contains(@text, 'About')]
${My_Org_About_Global_Admin}                              xpath=  //android.view.ViewGroup[@resource-id="organization-profile-about-global-admin"]
${Global_admi_back}	                                      xpath= //android.view.ViewGroup[@resource-id="member-list-btn-back-icon"]
${Manage_global_admin}                                     xpath= //android.widget.TextView[@text="Manage Global Admins"]
${My_Org_About_About}                                     xpath=  //android.view.ViewGroup[@resource-id="org-profile-about"]
${About_save}                                             xpath= //android.view.ViewGroup[@resource-id="edit-about-action-btn"]

${My_Org_About_Admin_global_covrtadmin}                  	xpath= //android.view.ViewGroup[@resource-id="bottom-popup-convert-to-admin-btn"]             
# ${index}=    Set Variable    0
# ${total_count}=    Set Variable    0
# ${max_iterations}=    Set Variable    5
# ${My_Org_About_Global_Admin}                              xpath=  //android.widget.TextView[contains(@text, 'Manage Global Admins')]
${My_Org_About_Global_Admin_Navigation}                   xpath= //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${My_Org_About_Edit}                                       xpath=  //android.widget.TextView[contains(@text, 'Edit')]
${My_Org_About_Edit_About}                                 xpath=  //android.widget.EditText[@text="Testing Process"] 
${My_Org_About_Edit_About_Save}                            xpath= //android.view.ViewGroup[@resource-id="global-navigator-Save"]
${My_Org_About_Admin_See_all}                              xpath=  //android.widget.TextView[contains(@text, 'See all')]
${My_Org_About_Admin_naviagtion}                           xpath= //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${My_Org_About_Member_See_all}                             xpath=  //android.widget.TextView[contains(@text, 'See all')]
${My_Org_About_Member_Change_UserRole}                     xpath=  //android.view.ViewGroup[@resource-id="change-user-role-icon-btn"]
${My_Org_About_Member_naviagtion}                          xpath=  //android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView           

${My_Org_Contact}                                           xpath=  //android.widget.HorizontalScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup
${My_Org_Contact_Edit}                                      xpath=  //android.widget.TextView[@text="Edit"]
${My_Org_Contact_Email}                                     xpath=  //android.widget.EditText[@resource-id="edit-contact-email-input"]
${My_Org_Contact_Phone}                                      xpath=  //android.widget.EditText[@resource-id="edit-contact-phone-input"]
${My_Org_Contact_Website}                                      xpath=  //android.widget.EditText[@resource-id="edit-contact-website-input"]
${My_Org_Contact_Contry}                                      xpath=  //android.view.ViewGroup[@resource-id="edit-contact-country-input"]
${My_Org_Contact_state}                                      xpath=  //android.view.ViewGroup[@resource-id="edit-contact-state-input"]
${My_Org_Contact_city}                                       xpath=  //android.view.ViewGroup[@resource-id="edit-contact-city-input"]
${My_Org_Contact_Save}                                      xpath= //android.view.ViewGroup[@resource-id="edit-contact-action-btn"]

${My_Org_Donate}                                           xpath=  //android.widget.TextView[contains(@text, 'Donate')]
${My_Org_Donate_Readmore}                                  xpath= //android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView[3]

${My_Org_Foll}                                               xpath= //android.widget.TextView[@text="Followers"]
${My_Org_Followers_one}                                      xpath= //android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]
${My_Org_Followers_two}                                      xpath= //android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]
${My_Org_Followers_three}                                    xpath= //android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]

${globaladmin_membercar}                        xpath= //android.view.ViewGroup[@resource-id="member-list-user-card-0"]