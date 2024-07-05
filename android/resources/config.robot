*** Settings ***
Resource     base.robot

*** Variables ***
${APP}                         ${CURDIR}/../apk/br-com-enjoei.apk
${TIMEOUT}                     25

*** Keywords ***
Open App
    open application        http://localhost:4723/wd/hub
	...                     platformName=android
	...                     automationName=UIAutomator2
	...                     app=${APP} 
    ...                     appActivity=.monolith.activities.MainActivity
    ...                     appPackage=br.com.enjoei.app
	...                     enableMultiWindows=${true}
	...                     disableWindowAnimation=${true}
	...                     autoGrantPermissions=${true}
	Set Appium Timeout      ${TIMEOUT}    


Fechar App
	Capture Page Screenshot
	Close Application
