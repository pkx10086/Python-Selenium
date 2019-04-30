
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from config import *
from pyquery import PyQuery as pq
from selenium.webdriver.common.by import  By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time
from DButils import DButils

chrome_options = webdriver.ChromeOptions()
chrome_options.add_argument('--headless') #关闭窗口
browser = webdriver.Chrome(options=chrome_options)
#wait = WebDriverWait(browser, 10,poll_frequency=0.5)
def grabDoubleColorBall(start,end):
	url = "https://datachart.500.com/ssq/history/newinc/history.php?start="+str(start)+"&end="+str(end)
	print("正在爬取第",start,"几期到",end,"的双色球")
	browser.get(url)
	
	getColors()

def getColors():
	"""
    提取数据信息
    """
	db = DButils('init.cfg','src_mysql')
	try:
		html = browser.page_source
		#print("============1==============:{}",html)
		if html == "":
			print("数据为空，请重新请求")
		else:
			
			num =[2,3,4,5,6,7] 
			doc = pq(html)
			oj = doc('.chart #tablelist #tdata .t_tr1')
			data = oj.items()
			for item in data:
				#print(item)
				v = ''
				v1 =''
				v2 =''
				v3 =''
				i = 0
				for t in item.children().items():
					if i==1:
						v = t.html()
					elif i in num:
						v1 = v1+"-"+t.html()
					elif i ==8:
						v2 = t.html()
					elif i ==16 :
						v3 = t.html()
					i += 1
				v1 = v1.replace("-","",1)
				sql = "insert into td_double_color_ball(level,result_red,result_blue,result_date,order_ball,create_date)values('%s','%s','%s','%s','1',sysdate())"% (v, v1, v2, v3)
				print(sql)
				
				db.create(sql)
						
			
		print("============完成===============")
			#print(oj)
	except BaseException as b:
		print("b:{}",b)
	finally:
		db.close_db()


if __name__ =='__main__':
	
	grabDoubleColorBall(18018,19018)
	
	'''
	db = DButils('init.cfg','src_mysql')
	try:
		b = db.fetchone('select * from td_double_color_ball limit 1')
		print(b)
	finally:
		db.close_db()
	'''