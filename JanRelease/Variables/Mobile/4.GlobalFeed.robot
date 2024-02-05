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

${Global}                        xpath= //android.widget.TextView[@resource-id="global-bottom-nav-PublicFeed-title"]
${Global_all}                    xpath= //android.view.ViewGroup[@resource-id="global-post-category-all"]
${Global_feedone}                xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0"]
${Global_Likeone}                xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0-like-btn"]
${Global_Commentone}             xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0-comment-btn"]
${Global_Commentinput}          xpath= //android.widget.EditText[@resource-id="individual-post-comment-input"]
${Global_postcomment}           xpath= //android.view.ViewGroup[@resource-id="individual-post-comment-icon"]
${Global_Goback}                xpath= //android.view.ViewGroup[@resource-id="individual-post-go-back-icon"]
${Global_Getcommentcount}       //android.view.ViewGroup[@resource-id="screen-public-feed-0-view-comment-btn"]

	
${Comics}                       xpath= //android.widget.TextView[@text="Comics"]
${Comicslike}                   xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0-like-btn"]
${Comics_Comment}               xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0-comment-btn"]
${Comics_Comment_input}         xpath= //android.widget.EditText[@resource-id="individual-post-comment-input"]
${Comics_Comment_post}          xpath= //android.view.ViewGroup[@resource-id="individual-post-comment-icon"]
${Comics_goback}                xpath= //android.view.ViewGroup[@resource-id="individual-post-go-back-icon"]
${Comics_Comment_count}         xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0-view-comment-btn"]
${Comics_feedone}                xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0"]

	
	
${Entertainment}                xpath= //android.widget.TextView[@text="Entertainment"]

${New_Category}                  xpath= //android.widget.TextView[@text="New Category"]

${Science_fiction}                xpath= //android.widget.TextView[@text="Science & Fiction"]
${Science_feedone}                xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0"]
${Science_fiction_like}            xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0-like-btn"]
${Science_fiction_Comment}         xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0-comment-btn"]
${Science_fiction_Comment_input}         xpath= //android.widget.EditText[@resource-id="individual-post-comment-input"]
${Science_fiction_Comment_post}         xpath= //android.view.ViewGroup[@resource-id="individual-post-comment-icon"]
${Science_fiction_Comment_goback}         xpath= //android.view.ViewGroup[@resource-id="individual-post-go-back-icon"]
${Comics_Comment_count}         xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0-view-comment-btn"]

	
${Society}                       xpath= //android.widget.TextView[@text="Society"]
${Society_feedone}                xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0"]
${Society_title}                       xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0-title-container"]
${Society_like}                       xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0-like-btn"]
${Society_comment}                       xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0-comment-btn"]
${Society_comment_input}                       xpath= //android.widget.EditText[@resource-id="individual-post-comment-input"]
${Society_comment_post}                   xpath= //android.view.ViewGroup[@resource-id="individual-post-comment-icon"]
${Society_comment_goback}                 xpath= //android.view.ViewGroup[@resource-id="individual-post-go-back-icon"]
${Comics_Comment_count}                   xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0-view-comment-btn"]

${Technology}                             xpath= //android.widget.TextView[@text="Technology"]
${Technology_feedone}                xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0"]
${Technology_title}                       xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0-title-container"]
${Technology_like}                        xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0-like-btn"]
${Technology_comment}                      xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0-comment-btn"]
${Technology_comment_input}                xpath= //android.widget.EditText[@resource-id="individual-post-comment-input"]
${Technology_comment_post}                 xpath= //android.view.ViewGroup[@resource-id="individual-post-comment-icon"]
${Technology_comment_goback}               xpath= //android.view.ViewGroup[@resource-id="individual-post-go-back-icon"]
${Technology_Comment_count}                xpath= //android.view.ViewGroup[@resource-id="screen-public-feed-0-view-comment-btn"]