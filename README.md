# avon_webscrapper
Webscrapper para revendedores avon pesquisando por CEP
AVON WEBSCRAPPER 1.0

Requisitos:
 - Beautyful Soup 4
 	- pip install bs4
 - Selenium
	- pip install selenium
 - Python mysql connector
	- pip install mysql-connector-python

 - Chrome Webdriver
	https://chromedriver.chromium.org/download


** IMPORTANTE **

Verifique antes a versão instalada do Google Chrome para baixar o chromedriver correto!

 - Salve o arquivo baixado chromedriver.exe em uma pasta de sua escolha
 - O valor da variável PATH no código deverá ser o caminho completo para esse arquivo
 - EXEMPLO: PATH = "C:\Users\Alex\Desktop\chromedriver\chromedriver.exe"

BANCO DE DADOS
 - O banco MySQL deverá possuir um banco chamado AVON contendo as tabelas:
    - CEP (campo postalcode)
    - revendedores (campos nome, bairro, distancia, email, telefone
    - (Há uma linha comentada no código que realiza a criação dessas tabelas com os devidos campos)


A função times_search recebe como argumento o número de vezes que irá clicar no botão "Mostrar mais resultados". Cada clique retorna 4 novos resultados a mais na página.
