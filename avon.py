import mysql.connector
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time
from bs4 import BeautifulSoup

PATH = "C:\carros\chromedriver.exe"

def times_search(t, driver):
    contador = 0
    while contador < t:
        try:
            buscaBotao = driver.find_element_by_xpath("/html/body/main/section/div[3]/div[1]/p[2]")
            buscaBotao.click()
            time.sleep(3)
            contador +=1
        except:
            pass

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  #comente a linha abaixo caso vá realizar a criação do banco/tabelas por esse script. 
  database = "AVON"
)

#'descomente' as linhas abaixo caso vá realizar a criação do banco/tabelas por esse script
#mycursor.execute("CREATE TABLE revendedores (nome VARCHAR(255), bairro VARCHAR(255), distancia VARCHAR(255),email VARCHAR(255),telefone VARCHAR(255))")
#mycursor.execute("CREATE TABLE cep (postalcode VARCHAR (255))")

CEPS = []

mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM cep")

myresult = mycursor.fetchall()

for x in myresult:
  CEPS.append(x)


for cep in CEPS:


    driver = webdriver.Chrome(PATH)
    print("Abrindo a página...")
    driver.get("https://www.avon.com.br/encontre-representante-avon")

    time.sleep(3)

    buscaCep = driver.find_element_by_id("x-cep")
    time.sleep(3)


    buscaCep.send_keys(cep)
    time.sleep(3)

    buscaCep.send_keys(Keys.RETURN)
    time.sleep(5)


    times_search(5, driver)


    html_source_code = driver.page_source

    soup = BeautifulSoup(html_source_code, 'html.parser')

    artist_name_list = soup.find(class_='x-representante--formulario--result')

    artist_name_list_items = artist_name_list.find_all('p')

    dados = []

    for artist_name in artist_name_list_items:
        names = artist_name.contents
        dados.append(names)

    revendedores = []


    for a in dados:
        for b in a:
            if str(b) == str("<strong>Compre por: </strong>"):
                revendedores.append("0")
            else:
                revendedores.append(b)

    lista_limpa = []
    lista_menor = []


    i = 0
    while i < len(revendedores):
        if  revendedores[i] == "0":
            lista_limpa.append(lista_menor)
            lista_menor = []
            i = i + 1
            
        else:
            lista_menor.append(revendedores[i])
            i = i + 1


    for c in lista_limpa:
        if len(c) < 5:
            c.append("0")
        else:
            continue

    for x in lista_limpa:
        if x[4] == "0":
            e = x[3]
            f = x[4]
            x[3] = f
            x[4] = e
        else:
            continue
    for nhe in lista_limpa:
        mycursor = mydb.cursor()

        sql = "INSERT INTO revendedores (nome, bairro, distancia, email, telefone) VALUES (%s, %s, %s, %s, %s)"
        val = (nhe[0], nhe[1], nhe[2], nhe[3], nhe[4])
        mycursor.execute(sql, val)

        mydb.commit()

        print(mycursor.rowcount, "record inserted.")

    driver.close()
    print("Busca do CEP" + cep + "Finalizada.")
    time.sleep(10)
