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
ser = Service(PATH)
op = webdriver.ChromeOptions()
op.add_experimental_option('excludeSwitches', ['enable-logging'])

def limpaCampo(texto):
    limpaCaracteres = "\n|.,%$\'"
    for caractere in limpaCaracteres:
        texto = texto.replace(caractere, "")
    return " ".join(texto.split())

def encontraTel(texto):
    x = texto.index("%2b")
    y = texto.index("&amp")
    return texto[x+3:y]

def itemBusca(d,tipoBusca,campo):
    ret = d.find_element(tipoBusca, campo) #local onde está o campo de procura
    return ret

def montaLista(d,emp):
    sairLaco = False
    html_source_code = d.page_source
    soup = BeautifulSoup(html_source_code, 'html.parser')

    if emp[0]==1:
        artist_name_list = soup.find(class_=emp[4]) #resultado da busca
    elif emp[0]==2:
        artist_name_list = soup.find(id=emp[4]) #resultado da busca

    artist_name_list_items = artist_name_list.find_all(emp[5]) #elemento de separação dos itens
    dados = []

    for artist_name in artist_name_list_items:
        names = artist_name.contents
        dados.append(names)
    revendedores = []

    for a in dados:
        for b in a:
            if empresa[0] == 1:
                if str(b) == str(emp[6]): #final de registro
                    revendedores.append("0")
                else:
                    revendedores.append(b)
            elif empresa[0] == 2:
                if str(b).find(str(emp[6])) != -1:
                    revendedores.append("0")
                    sairLaco = True
                    break
                else:
                    revendedores.append(str(b))
        if sairLaco:
            break

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

    if empresa[0]==1:
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
        retorno = lista_limpa
    elif empresa[0]==2:
        for c in lista_limpa:
            c[0] = limpaCampo(c[0])
            c[1] = '0'
            c[4] = encontraTel(c[2])
            c[2] = '0'
            c[3] = '0'
        retorno = c
    return retorno

mycursor = mydb.cursor()

sql = "SELECT * FROM tb_cep WHERE id_cidade = 2 AND id_cep > 9460 "
mycursor.execute(sql)

myresultCEPS = mycursor.fetchall()

for x in myresultCEPS:
  CEPS.append(x)

sql = "SELECT * FROM tb_empresa WHERE id_empresa = 2 AND b_ativo = 1"
mycursor.execute(sql)

myresultEmpresas = mycursor.fetchall()

for x in myresultEmpresas:
  EMPRESAS.append(x)


for empresa in EMPRESAS:
    urlBusca = empresa[2]
    for cep in CEPS:

        print("Abrindo a página...")
        driver = webdriver.Chrome(service=ser, options=op)
        driver.get(urlBusca)

        time.sleep(5)
        lista_cadastro = []

        if str(empresa[0]) == "1":
            buscaCep = itemBusca(driver, By.ID, empresa[3])
            buscaCep.send_keys(str(cep[1]))
            if empresa[8] is None:
                buscaCep.send_keys(Keys.RETURN)
            else:
                buscaBotao = itemBusca(driver, By.ID, empresa[8])
                buscaBotao.click()
            time.sleep(10)
            for i in range(9): #definir quantidade de vezes a ser clicado no botao de buscar começar pelo 0
                try:
                    buscaMais = itemBusca(driver, By.CLASS_NAME, empresa[7])
                    buscaMais.click()
                    time.sleep(10)
                except:
                    pass
            lista_cadastro = montaLista(driver,empresa)
        elif str(empresa[0]) == "2":
            buscaCep = itemBusca(driver, By.ID, empresa[3])
            buscaCep.send_keys(str(cep[1][:5] + "-" + cep[1][5:]))
            if empresa[8] is None:
                buscaCep.send_keys(Keys.RETURN)
            else:
                buscaBotao = itemBusca(driver, By.ID, empresa[8])
                buscaBotao.click()
            time.sleep(10)
            for i in range(9): #definir quantidade de vezes a ser clicado no botao de buscar começar pelo 0
                try:
                    lista_cadastro.append(montaLista(driver,empresa))
                    time.sleep(1)
                    if empresa[0] == 1:
                        buscaMais = itemBusca(driver, By.CLASS_NAME, empresa[7])
                    elif empresa[0] == 2:
                        buscaMais = itemBusca(driver, By.ID, empresa[7])
                    buscaMais.click()
                    time.sleep(3)
                except:
                    pass
        elif str(empresa[0]) == "3":
            buscaCep = itemBusca(driver, By.CLASS_NAME, empresa[3])
            buscaCep.send_keys(str(cep[1]))
            if empresa[8] is None:
                buscaCep.send_keys(Keys.RETURN)
            else:
                buscaBotao = itemBusca(driver, By.ID, empresa[8])
                buscaBotao.click()
            time.sleep(10)
            for i in range(9): #definir quantidade de vezes a ser clicado no botao de buscar começar pelo 0
                try:
                    buscaMais = itemBusca(driver, By.CLASS_NAME, empresa[7])
                    buscaMais.click()
                    time.sleep(10)
                except:
                    pass
            lista_cadastro = montaLista(driver,empresa)
        else:
            print("Não há empresas selecionadas")


        registros = 0
        for nhe in lista_cadastro:
            mycursor = mydb.cursor()
            consulta = limpaCampo(nhe[0])
            sql = "SELECT str_nome_revendedores FROM tb_revendedores WHERE str_nome_revendedores = '"+consulta+"'"
            mycursor.execute(sql)
            # gets the number of rows affected by the command executed
            msg = mycursor.fetchone()  
            # check if it is empty and print error
            if not msg:
                sql = "INSERT INTO tb_revendedores (str_nome_revendedores, str_bairro, str_distancia, str_email, str_telefone, id_empresa, id_cidade) VALUES ( '"+consulta+"', '"+nhe[1]+"', '"+nhe[2]+"', '"+nhe[3]+"', '"+nhe[4]+"', '"+str(empresa[0])+"', '"+str(cep[2])+"')"
                mycursor.execute(sql)
                mydb.commit()
                registros += 1 

        sql = "UPDATE tb_historico SET str_hist = 'Último ID CEP: "+str(cep[0])+", Último ID Empresa "+str(empresa[0])+".'"
        mycursor.execute(sql)
        mydb.commit()
        print(registros, "registros inseridos do CEP "+str(cep[1])+" na empresa "+str(empresa[1])+".")
        driver.quit()
        time.sleep(5)
