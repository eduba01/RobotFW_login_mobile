 <h1 align="center">Hi 👋, I'm Eduardo Azevedo</h1>
<h3 align="center">Automatizador de testes</h3>


 <img src="https://appium.io/docs/en/latest/assets/images/appium-logo-horiz.png" alt="cypress" width="300" height="80"/> 
 

---
## Testando aplicação Mobile   <br />
  
## 📋  Detalhes   <br />

 
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

## 🛠️  Instalação e configurações    <br />

**Precondições:**

* Ter instalado os seguintes programas:
    * Python
    * Java JDK
    * Appium Server GUI       <br /> <br /> 

* Programas para automação:
    * Visual code
    * Git
    * Node.js
    * Android studio
    * Appium Inspector

 

### Variaveis de ambiente:    <br />

JAVA_HOME -   `C:\Program Files\Java\jdk1.8.0_202\`

Adicionar também no path: `"%JAVA_HOME%\bin`

ANDROID_HOME - `C:\Users\{usuario}\AppData\Local\Android\Sdk`
 

* Adicionar também no path:    <br />

'%ANDROID_HOME%\platform-tools'

'%ANDROID_HOME%\tools'


### Instalar Robot Framework e AppiumLibrary  <br />

  Executar o comando:   <br />
````
  pip install robotframework 
  pip install --upgrade robotframework-appiumlibrary
````

Ou usar o arquivo com os requisitos:   <br />
````
  pip install -r requirements.txt
````
 
 
### Android studio  <br />

* Criar um novo device - Simulador    <br />
    * Release Name:  Tiramisu

> Obs: Caso ocorra erro de ADB location:
> ````
>     * Startar o device no android studio e clicar em "..." para abrir as configurações
> 
>     * Setting > use detexted ADB location e apontar para o que esta localizado em "platform-tools"
> 
> C:\Users\{usuario}AppData\Local\Android\Sdk\platform-tools\adb.exe
> ````
 
 
### Appium Inspector    <br />
![img](https://miro.medium.com/v2/resize:fit:640/1*CwMgZM3yyZdm1vfjNPZa6w.gif)


Host:               'http://localhost'    <br />
Porta:              '4723'                <br />
Remote path:        '/wd/hub'             <br />

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

${BASE_URL}            `http://localhost:4723/wd/hub`
 
${APP}                 `${EXECDIR}/../App/APP.apk`

 ###  Clone do projeto 

* Criar um diretório para baixar o projeto

    * Baixar o projeto com o comando:
````
git clone http://gitlab.....git
````
logar com o usuario e senha da rede (mesmo usuario do gitlab)
 

 ### 🚀 EXECUTANDO OS TESTES

<br />  **Obs:**  Abrir o projeto na IDE e alterar e-mail e telefone do arquivo "**base.robot**"   <br /> <br />

* Startar o device virtual no  **Android Studio**    <br />

![img](https://th.bing.com/th/id/OIP._NGJrLpMe-D47lnH8EcoVwAAAA?w=250&h=180&c=7&r=0&o=5&pid=1.7)

* Startar o "Appium Server GUI"    <br />
 
| ![img](https://th.bing.com/th/id/OIP.RC_0b7mMmFTcz3mV6Ej22gHaG6?pid=ImgDet&rs=1) | ![ APP ](https://th.bing.com/th/id/OIP.9wyNNYGOlifdia3flh5PIAAAAA?pid=ImgDet&rs=1) |


**Rodar a automação:**    <br />


1. Abrir um terminal console;  <br />
1. Ir até o diretório do projeto que foi baixado;


> ex: C:\AUTOMACAO\project-name\Features

 
3. Executar a automação com o comando.    <br />
````
 robot -d ./results login.robot
````

 
 <br />


<p align="left"> <img src="https://komarev.com/ghpvc/?username=eduba01&label=Profile%20views&color=0e75b6&style=flat" alt="eduba01" /> </p>

<p align="left"> <a href="https://github.com/ryo-ma/github-profile-trophy"><img src="https://github-profile-trophy.vercel.app/?username=eduba01" alt="eduba01" /></a> </p>

<h3 align="left">Connect with me:</h3>
<p align="left">
</p>

<h3 align="left">Languages and Tools:</h3>
<p align="left"> <a href="https://www.cypress.io" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/simple-icons/simple-icons/6e46ec1fc23b60c8fd0d2f2ff46db82e16dbd75f/icons/cypress.svg" alt="cypress" width="40" height="40"/> </a> <a href="https://www.figma.com/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/figma/figma-icon.svg" alt="figma" width="40" height="40"/> </a> <a href="https://git-scm.com/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/git-scm/git-scm-icon.svg" alt="git" width="40" height="40"/> </a> <a href="https://www.java.com" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/java/java-original.svg" alt="java" width="40" height="40"/> </a> <a href="https://www.jenkins.io" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/jenkins/jenkins-icon.svg" alt="jenkins" width="40" height="40"/> </a> <a href="https://www.linux.org/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/linux/linux-original.svg" alt="linux" width="40" height="40"/> </a> <a href="https://postman.com" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/getpostman/getpostman-icon.svg" alt="postman" width="40" height="40"/> </a> <a href="https://www.python.org" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg" alt="python" width="40" height="40"/> </a> <a href="https://www.ruby-lang.org/en/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/ruby/ruby-original.svg" alt="ruby" width="40" height="40"/> </a> <a href="https://www.selenium.dev" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/detain/svg-logos/780f25886640cef088af994181646db2f6b1a3f8/svg/selenium-logo.svg" alt="selenium" width="40" height="40"/> </a> </p>

<p><img align="left" src="https://github-readme-stats.vercel.app/api/top-langs?username=eduba01&show_icons=true&locale=en&layout=compact" alt="eduba01" /></p>

<p>&nbsp;<img align="center" src="https://github-readme-stats.vercel.app/api?username=eduba01&show_icons=true&locale=en" alt="eduba01" /></p>

<p><img align="center" src="https://github-readme-streak-stats.herokuapp.com/?user=eduba01&" alt="eduba01" /></p>
