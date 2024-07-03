*** Settings ***
Resource 	../resources/base.robot

*** Variables ***
${ENTRAR_BTN}                             xpath=//android.widget.TextView[@text="entrar"]
${EMAIL_BTN}                              xpath=//android.widget.TextView[@resource-id="br.com.enjoei.app:id/textView_providerName" and @text="continuar com email"]
${EMAIL_TXT}                              xpath=(//android.widget.EditText[@resource-id="br.com.enjoei.app:id/editText_fieldInput"])[1]
${SENHA_TXT}                              xpath=(//android.widget.EditText[@resource-id="br.com.enjoei.app:id/editText_fieldInput"])[2]
${ENTRAR_LOGIN_BTN}                       br.com.enjoei.app:id/enterButton
${MENU_LOGADO}                            br.com.enjoei.app:id/tabBarItemUserText





