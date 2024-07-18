 
 <img src="https://appium.io/docs/en/latest/assets/images/appium-logo-horiz.png" alt="cypress" width="300" height="80"/> 
 
 
---
## Testando aplicação Mobile   <br/>
  
## 📋  Detalhes   <br/>

 
````
 ├── android
  ├── apk                         # Aplicativo  
  ├── features                    # Teste cases 
  ├── pages                       # Contém os Elementos das pages
  ├── resources                   # Aequivios Json, YAML, etc  
    ├── dados                     # Diretório com arquivos de variáveis
    ├── base                      # Libraries e resources
    ├── config                    # Configurações de execução
    ├── hooks                     # Keywords comuns
  ├── results                     # Aequivios de log e reports    
  ├── steps                       # Keywords de testes  
    ├── .gitignore                # Arquivos e pastas ignorados no repositório  
    ├── README.md                 # Documentação do projeto  
    ├── requirements.txt          # Bibliotecas para instalações
 ├── ios
````

## 🛠️  Instalação e configurações    <br/>

**Precondições:**

* Ter instalado os seguintes programas:
    * Python
    * Java JDK
    * Appium Server GUI       <br/> <br/> 

* Programas para automação:
    * Visual code
    * Git
    * Node.js
    * Android studio
    * Appium Inspector

 

### Variaveis de ambiente:    <br/>

JAVA_HOME -   `C:\Program Files\Java\jdk1.8.0_202\`

Adicionar também no path: `"%JAVA_HOME%\bin`

ANDROID_HOME - `C:\Users\{usuario}\AppData\Local\Android\Sdk`
 

* Adicionar também no path:    <br/>

'%ANDROID_HOME%\platform-tools'

'%ANDROID_HOME%\tools'


### Instalar Robot Framework e AppiumLibrary  <br/>

  Executar o comando:   <br/>
````
  pip install robotframework 
  pip install --upgrade robotframework-appiumlibrary
````

Ou usar o arquivo com os requisitos:   <br/>
````
  pip install -r requirements.txt
````
 
 
### Android studio  <br/>

* Criar um novo device - Simulador    <br/>
    * Release Name:  Tiramisu

> Obs: Caso ocorra erro de ADB location:
> ````
>     * Startar o device no android studio e clicar em "..." para abrir as configurações
> 
>     * Setting > use detexted ADB location e apontar para o que esta localizado em "platform-tools"
> 
> C:\Users\{usuario}AppData\Local\Android\Sdk\platform-tools\adb.exe
> ````
 
 
### Appium Inspector    <br/>
![img](https://miro.medium.com/v2/resize:fit:640/1*CwMgZM3yyZdm1vfjNPZa6w.gif)


Host:               'http://localhost'    <br/>
Porta:              '4723'                <br/>
Remote path:        '/'                   <br/>

````
{
  "platformName": "Android",
  "appium:deviceName": "Pixel_3a",
  "appium:app": "C:\\Users\\usuario\\android\\apk\\APP.apk",
  "appium:automationName": "uiautomator2",
  "appium:autoGrantPermissions": true,
  "appium:platformVersion": "%{ANDROID_PLATFORM_VERSION=13.0}",
  "appium:enableMultiWindows": true,
  "appium:appActivity": " ",
  "appium:appPackage": " "
}
````

${BASE_URL}            `http://localhost:4723`
 
${APP}                 `${EXECDIR}/../App/APP.apk`

 ###  Clone do projeto 

* Criar um diretório para baixar o projeto

    * Baixar o projeto com o comando:
````
git clone http://gitlab.....git
````
logar com o usuario e senha da rede (mesmo usuario do gitlab)
 

 ### 🚀 EXECUTANDO OS TESTES

<br/>  **Obs:**  Abrir o projeto na IDE e alterar e-mail e telefone do arquivo "**base.robot**"   <br/> <br/>

* Startar o device virtual no  **Android Studio**    <br/>

![img](https://th.bing.com/th/id/OIP._NGJrLpMe-D47lnH8EcoVwAAAA?w=250&h=180&c=7&r=0&o=5&pid=1.7)

* Startar o "Appium Server GUI"    <br/>
 
| ![img](https://th.bing.com/th/id/OIP.RC_0b7mMmFTcz3mV6Ej22gHaG6?pid=ImgDet&rs=1) | ![ APP ](https://th.bing.com/th/id/OIP.9wyNNYGOlifdia3flh5PIAAAAA?pid=ImgDet&rs=1) |


**Rodar a automação:**    <br/>


1. Abrir um terminal console;  <br/>
1. Ir até o diretório do projeto que foi baixado;


> ex: C:\AUTOMACAO\project-name\Features

 
3. Executar a automação com o comando.    <br/>
````
 robot -d ./results login.robot

````
<br/>   * Informando uma tag:
````
 robot -d ./results -i CT-001 login.robot
````

 
