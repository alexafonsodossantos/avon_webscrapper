import mysql.connector
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
import time
from bs4 import BeautifulSoup

#verifique o driver do chrome antes de executar
PATH = "./driver/cd96.exe"


mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  #comente a linha abaixo caso vá realizar a criação do banco/tabelas por esse script. 
  database = "RepCom"
)

#'descomente' as linhas abaixo caso vá realizar a criação do banco/tabelas por esse script
#mycursor.execute("CREATE TABLE revendedores (nome VARCHAR(255), bairro VARCHAR(255), distancia VARCHAR(255),email VARCHAR(255),telefone VARCHAR(255))")
#mycursor.execute("CREATE TABLE cep (postalcode VARCHAR (255))")

EMPRESAS = []
CEPS = []

mycursor = mydb.cursor()

sql = "SELECT * FROM tb_cep"
mycursor.execute(sql)

myresultCEPS = mycursor.fetchall()

for x in myresultCEPS:
  CEPS.append(x)

sql = "SELECT * FROM tb_empresa WHERE b_ativo = 1"
mycursor.execute(sql)

myresultEmpresas = mycursor.fetchall()

for x in myresultEmpresas:
  EMPRESAS.append(x)


for empresa in EMPRESAS:
    for cep in CEPS:

        ser = Service(PATH)
        op = webdriver.ChromeOptions()
        op.add_experimental_option('excludeSwitches', ['enable-logging'])
        driver = webdriver.Chrome(service=ser, options=op)

        print("Abrindo a página...")
        driver.get(empresa[2])

        time.sleep(5)

        buscaCep = driver.find_element(By.ID, empresa[3]) #local onde está o campo de procura


        buscaCep.send_keys(str(cep[1]))
        buscaCep.send_keys(Keys.RETURN)
        #buscaBotao = driver.find_element(By.CLASS_NAME,'x-representante--formulario--items__lupa')
        #buscaBotao.click()
        time.sleep(10)

        for i in range(4): #definir quantidade de vezes a ser clicado no botao de buscar começar pelo 0
            try:
                buscaMais = driver.find_element(By.CLASS_NAME,'js--carregarMais')
                buscaMais.click()
                time.sleep(10)
            except:
                pass

        html_source_code = driver.page_source

        soup = BeautifulSoup(html_source_code, 'html.parser')

        artist_name_list = soup.find(class_=empresa[4]) #resultado da busca

        artist_name_list_items = artist_name_list.find_all(empresa[5]) #elemento de separação dos itens

        dados = []

        for artist_name in artist_name_list_items:
            names = artist_name.contents
            dados.append(names)

        revendedores = []


        for a in dados:
            for b in a:
                if str(b) == str(empresa[6]): #final de registro
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

        registros = 0

        for nhe in lista_limpa:
            mycursor = mydb.cursor()

            mycursor.execute("SELECT str_nome_revendedores FROM tb_revendedores WHERE str_nome_revendedores = '"+nhe[0]+"'")
            # gets the number of rows affected by the command executed
            msg = mycursor.fetchone()  
            # check if it is empty and print error
            if not msg:
                sql = "INSERT INTO tb_revendedores (str_nome_revendedores, str_bairro, str_distancia, str_email, str_telefone, id_empresa) VALUES ( '"+nhe[0]+"', '"+nhe[1]+"', '"+nhe[2]+"', '"+nhe[3]+"', '"+nhe[4]+"', '"+str(empresa[0])+"')"
                mycursor.execute(sql)
                mydb.commit()
                registros += 1 

        print(registros, "registros inseridos.")
        driver.close()
        time.sleep(2)
