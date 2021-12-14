import mysql.connector
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
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

sql = "SELECT * FROM tb_empresa"
mycursor.execute(sql)

myresultEmpresas = mycursor.fetchall()

for x in myresultEmpresas:
  EMPRESAS.append(x)


for empresa in EMPRESAS:
    for cep in CEPS:
       print(cep)
    print(empresa)