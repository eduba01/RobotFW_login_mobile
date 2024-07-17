*** Settings ***
Resource 	../resources/base.robot

*** Variables ***
${Menu_Busca}                               br.com.enjoei.app:id/tabBarItemSearch
${BUSCA_LBL}                                br.com.enjoei.app:id/editText_searchQuery    
${LISTA_PRODUTOS}                           br.com.enjoei.app:id/listView
${PRODUTO_Nome}                             xpath=(//android.widget.ImageView[@resource-id="br.com.enjoei.app:id/productPhoto"])[1]
${BTN_Adicionar_Carrinho}                   br.com.enjoei.app:id/purchaseByBundleButton
${PRODUTO_Titulo}                           br.com.enjoei.app:id/productTitle
${BTN_Conferir_Sacolinha}                   xpath=//android.widget.TextView[@text="conferir sacolinha"]
${BTN_Comprar_Agora}                        xpath=//android.widget.TextView[@text="comprar agora"] 





