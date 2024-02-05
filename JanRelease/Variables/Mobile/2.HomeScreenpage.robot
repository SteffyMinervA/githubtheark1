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
${Password}                                             Tahaan@05

${Main_Home_Tab}                                        global-bottom-bar-container
${Main_Home_Tab_Search_Button}                          xpath= //android.view.ViewGroup[@resource-id="global-topbar-search"]


${Main_page_Searchbar}                                  xpath=    //android.view.ViewGroup[@resource-id="header-btn-search"]
${Main_Home_Tab_Search_Button_input}                          xpath= //android.view.ViewGroup[@resource-id="search-input"]
${input}                                                xpath= //android.widget.EditText[@resource-id="search-input"]
${input_data}                                         St. Mary's Cathedral
${Main_page_search_all}                               xpath=    //android.widget.TextView[@resource-id="search-text-All"]
${Main_page_search_organisation}                      xpath=    //android.widget.TextView[@resource-id="search-text-Organizations"]
${Main_Home_Tab_Search_select org}                          xpath= //android.view.ViewGroup[@resource-id="organization-item-search-0-btn-action"]
${Main_Home_select org_Navigation}                      xpath=  //android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${Main_Search_Button_Navigate}                          xpath= //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.TextView
${Main_page_Notificationbar}                            xpath=    //android.view.ViewGroup[@resource-id="header-btn-notification"]
${Main_page_Notificationbar_Count}                      xpath=    //android.widget.TextView[@resource-id="global-notification-count"]
${Main_page_Notificationbar_data}                            xpath=    //android.view.ViewGroup[@resource-id="notification-onview-btn"]
${Main_page_Notificationbar_allread}                            xpath=    //android.view.ViewGroup[@resource-id="notification-btn-trigger"]
${Main_page_Notificationbar_back}                            xpath=  //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${Main_page_Profile_Icon}                               xpath=    //android.widget.ImageView[@resource-id="global-topbar-profile-picture"]

${Main_page_Global_Icon}                                xpath= //android.widget.TextView[@resource-id="global-bottom-nav-PublicFeed-title"]
${Main_page_Private_Icon}                               xpath=  //android.widget.TextView[@resource-id="global-bottom-nav-HomeMyFeed-title"]
${Main_page_Private_Icon_Nopost}                        xpath=    //android.widget.TextView[contains(@text,'No Posts found')]
${Main_page_MyOrg_Icon}                                 xpath=    //android.widget.TextView[@resource-id="global-bottom-nav-HomeMyOrganizations-title"]
${Main_page_MyOrg_Icon_feed}                            xpath=    //android.widget.TextView[contains(@text,'Organizations you can follow')]
${Main_page_News_Icon}                                  xpath=    //android.widget.TextView[@resource-id="global-bottom-nav-HomeGlobalFeed-title"]
${Main_page_More_Option}                                xpath=    //android.widget.TextView[@resource-id="global-bottom-nav-GlobalMenu-title"]

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
