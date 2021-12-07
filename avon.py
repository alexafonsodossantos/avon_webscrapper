
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


PATH = "C:\carros\chromedriver.exe"

from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time
from bs4 import BeautifulSoup

driver = webdriver.Chrome(PATH)
print("Abrindo a página...")
driver.get("https://www.avon.com.br/encontre-representante-avon")

time.sleep(3)

buscaCep = driver.find_element_by_id("x-cep")
time.sleep(3)


buscaCep.send_keys("13331-250")
time.sleep(3)

buscaCep.send_keys(Keys.RETURN)
time.sleep(5)


times_search(3, driver)


html_source_code = driver.page_source

soup = BeautifulSoup(html_source_code, 'html.parser')

artist_name_list = soup.find(class_='x-representante--formulario--result')

artist_name_list_items = artist_name_list.find_all('p')

dados = []

for artist_name in artist_name_list_items:
    names = artist_name.contents
    print(names)
    dados.append(names)

print(dados)

for a in dados:
    for b in a:
        if str(b) == str("<strong>Compre por: </strong>"):
            print("\n")
        else:
            print(b)









