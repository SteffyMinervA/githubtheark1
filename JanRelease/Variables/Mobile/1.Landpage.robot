*** Settings ***
Documentation    Suite description
Library     String
Library  AppiumLibrary

*** Variables ***
#####SLID###########
${Description_1}                                       launch-slider-1-description

##### About Ark ####
${About_Ark}                                            xpath= //android.widget.TextView[contains(@text,'About Ark')]
${About_Ark_Navigation}                                 xpath= //android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.ImageView
${About_Ark_Connectwithus}                              xpath= //android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[5]/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${About_Ark_Firstname}                                  xpath= //android.widget.EditText[@resource-id="arkAbout-input-connect-withus-first-name"]
${About_Ark_Email}                                      xpath= //android.widget.EditText[@resource-id="arkAbout-input-connect-withus-email"]
${About_Ark_Subject}                                    xpath= //android.widget.EditText[@resource-id="arkAbout-input-connect-withus-subject"]
${About_Ark_Comments}                                   xpath= //android.widget.EditText[@resource-id="arkAbout-input-connect-withus-message"]
${About_Ark_Submit}                                     xpath= //android.view.ViewGroup[@resource-id="connect-btn-support"]
${My_Profile_LogOut}                                    xpath= //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[6]

##### Login #####
${Login_Button_Click}                                   xpath= //android.widget.TextView[contains(@text,'Log in')]
${Login_UserName}                                       xpath= //android.widget.EditText[contains(@resource-id,'login-input-username')]
${Login_Password}                                       xpath= //android.widget.EditText[contains(@resource-id,'login-input-password')]    
${Login_Password_eyeball}                               xpath= //android.view.ViewGroup[@resource-id='login-input-password-password-eye-on']
${Login_button}                                         xpath= //android.view.ViewGroup[@resource-id='btn-login']
${Username}                                             steffy17minerva@gmail.com
${Password}                                             Tahaan@05

##### Registration #####
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
@{countries}                                          Afghanistan  Albania  Algeria  Andorra  Angola  Antigua and Barbuda  Argentina  Armenia  Australia  Austria  Azerbaijan  Bahamas  Bahrain  Bangladesh  Barbados  Belarus  Belgium  Belize  Benin  Bhutan  Bolivia  Bosnia and Herzegovina  Botswana  Brazil  Brunei  Bulgaria  Burkina Faso  Burundi  Cabo Verde  Cambodia  Cameroon  Canada  Central African Republic  Chad  Chile  China  Colombia  Comoros  Congo  Costa Rica  Croatia  Cuba  Cyprus  Czechia  Denmark  Djibouti  Dominica  Dominican Republic  East Timor (Timor-Leste)  Ecuador  Egypt  El Salvador  Equatorial Guinea  Eritrea  Estonia  Eswatini  Ethiopia  Fiji  Finland  France  Gabon  Gambia  Georgia  Germany  Ghana  Greece  Grenada  Guatemala  Guinea  Guinea-Bissau  Guyana  Haiti  Honduras  Hungary  Iceland  India  Indonesia  Iran  Iraq  Ireland  Israel  Italy  Jamaica  Japan  Jordan  Kazakhstan  Kenya  Kiribati  Korea, North  Korea, South  Kosovo  Kuwait  Kyrgyzstan  Laos  Latvia  Lebanon  Lesotho  Liberia  Libya  Liechtenstein  Lithuania  Luxembourg  Madagascar  Malawi  Malaysia  Maldives  Mali  Malta  Marshall Islands  Mauritania  Mauritius  Mexico  Micronesia  Moldova  Monaco  Mongolia  Montenegro  Morocco  Mozambique  Myanmar (Burma)  Namibia  Nauru  Nepal  Netherlands  New Zealand  Nicaragua  Niger  Nigeria  North Macedonia  Norway  Oman  Pakistan  Palau  Panama  Papua New Guinea  Paraguay  Peru  Philippines  Poland  Portugal  Qatar  Romania  Russia  Rwanda  Saint Kitts and Nevis  Saint Lucia  Saint Vincent and the Grenadines  Samoa  San Marino  Sao Tome and Principe  Saudi Arabia  Senegal  Serbia  Seychelles  Sierra Leone  Singapore  Slovakia  Slovenia  Solomon Islands  Somalia  South Africa  South Sudan  Spain  Sri Lanka  Sudan  Suriname  Sweden  Switzerland  Syria  Taiwan  Tajikistan  Tanzania  Thailand  Togo  Tonga  Trinidad and Tobago  Tunisia  Turkey  Turkmenistan  Tuvalu  Uganda  Ukraine  United Arab Emirates  United Kingdom  United States  Uruguay  Uzbekistan  Vanuatu  Vatican City  Venezuela  Vietnam  Yemen  Zambia  Zimbabwe
@{indian_states}    Andhra Pradesh    Arunachal Pradesh    Assam    Bihar    Chhattisgarh
...    Goa    Gujarat    Haryana    Himachal Pradesh    Jharkhand
...    Karnataka    Kerala    Madhya Pradesh    Maharashtra    Manipur
...    Meghalaya    Mizoram    Nagaland    Odisha    Punjab
...    Rajasthan    Sikkim    Tamil Nadu    Telangana    Tripura
...    Uttar Pradesh    Uttarakhand    West Bengal
${SignUp_Date_of_birth}                                 xpath= //android.view.ViewGroup[@resource-id='register-input-dob']
${SignUp_Date_of_birth_Select}                          xpath= //android.widget.EditText[@resource-id='android:id/numberpicker_input']
${BIRTH_DATE_INPUT}                                     xpath= //android.widget.EditText[@resource-id='android:id/numberpicker_input']
${SignUp_Gender}                                        xpath= //android.view.ViewGroup[@resource-id='register-input-gender-tab-Female']
${SignUp_Register}                                      xpath= //android.view.ViewGroup[@resource-id='btn-register']
${contineubutton_global}                                       xpath= //android.view.ViewGroup[@resource-id="homeIntro-btn-Global-next"]
${contineubutton_private}                                       xpath= //android.view.ViewGroup[@resource-id="homeIntro-btn-Private-next"]
${contineubutton_myorg}                                       xpath= //android.view.ViewGroup[@resource-id="homeIntro-btn-My Organization-next"]
${contineubutton_news}                                       xpath= //android.view.ViewGroup[@resource-id="homeIntro-btn-News-next"]
${AllsetattheArk}                                       xpath= //android.view.ViewGroup[@resource-id="homeIntro-btn-Pending Invites-next"]
${Registerbutton}                                       xpath= //android.view.ViewGroup[@resource-id="btn-register"]
${Login_NotRegistered}                                  xpath= //android.widget.TextView[contains(@text,"Not registered? Signup here")]
${Pop_Up_Log_Out}                                       xpath= //android.view.ViewGroup[contains(@resource-id,'popUp-btn-positive')]
${Skip_for_now}                                        xpath= //android.view.ViewGroup[@resource-id="btn-skip-upload-pic"]
${ProfileArk_Image}                                     xpath= //android.widget.ImageView[@resource-id="global-topbar-profile-picture"]
