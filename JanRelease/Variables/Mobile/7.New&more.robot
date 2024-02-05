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

${Main_page_News_Icon}                                  xpath=    //android.widget.Button[@resource-id="global-bottom-nav-HomeGlobalFeed"]

${Main_page_News_Icon}                                 xpath=    //android.widget.Button[@resource-id="global-bottom-nav-HomeGlobalFeed"]
${news_saved}                                          xpath=  //android.view.ViewGroup[@resource-id="trending-news-pin-btn"]
${news_liked}                                          xpath=  //android.view.ViewGroup[@resource-id="trending-news-like-btn"]
${Main_page_More_Option}                                xpath=    //android.widget.Button[@resource-id="global-bottom-nav-GlobalMenu"]


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
