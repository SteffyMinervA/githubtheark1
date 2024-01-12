*** Settings ***
Documentation    Suite description
Library  AppiumLibrary
Library  String





*** Variables ***
${APPIUMSERVER} =       http://localhost:4723/wd/hub
${PLATFORM_NAME} =      Android
# ${PLATFORM_VERSION} =   12.0
# ${DEVICE_ID} =          emulator-5554
# ${DEVICE_NAME} =        Pixel 7 API 31
${PLATFORM_VERSION} =   13
${DEVICE_ID} =          3083593335000GT
${DEVICE_NAME} =        vivo V21e 5G
${PACKAGE_NAME0} =      com.thearkconnect.social.staging
${ACTIVITY_NAME0} =     com.thearkconnect.social.MainActivity

# MobileDevice

# {
#   "platformName": "Android",
#   "platformVersion": "13",
#   "udid": "3083593335000GT",
#   "deviceName": "vivo V21e 5G ",
#   "appPackage": "com.thearkconnect.social.staging",
#   "appActivity": "com.thearkconnect.social.MainActivity",
#   "automationName": "UiAutomator2"
# }

# Emulator

# {
#   "platformName": "Android",
#   "platformVersion": "8.1.0",
#   "udid": "emulator-5554",
#   "deviceName": "Pixel 7 Pro API 27 ",
#   "appPackage": "com.thearkconnect.social.staging",
#   "appActivity": "com.thearkconnect.social.MainActivity",
#   "automationName": "UiAutomator2"
# }