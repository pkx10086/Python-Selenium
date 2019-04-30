

from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from config import *
from pyquery import PyQuery as pq
#import DButils
'''
   模拟浏览器搜索
'''
def search():
	driver = webdriver.Chrome()
	driver.get("http://www.baidu.com")
	elemSearchName = driver.find_element_by_name("wd")
	elemSearchName.clear() #先清空
	elemSearchName.send_keys("python")
	elemSearchName.send_keys(Keys.RETURN) #模拟键盘上的return按键 

	assert "No results found." not in driver.page_source
	print("driver.title:%s"%driver.title)
	# assert "百度一下，你就知道" in driver.title
	driver.close()

'''
利用 Python自带的unittest来写测试用代码
 这是一个在 python.org 站点上搜索的案例:
'''
import unittest 
class searchPython(unittest.TestCase):
	def setUp(self):
		self.driver = webdriver.Chrome()
		print("初始化。。。。")

	def test_search_in_python_org(self):
		print("执行。。。。。。")
		driver = self.driver
		driver.get("http://www.python.org")
		self.assertIn("Python",driver.title)
		elem = driver.find_element_by_name("q")
		elem.clear()
		elem.send_keys("pycon")
		elem.send_keys(Keys.RETURN)
		assert "No results found." not in driver.page_source
	def tearDown(self):
		print("close。。。");
		self.driver.close()


from selenium.webdriver.common.by import  By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
'''
	等待10秒在执行下一步程序
'''
def waitS():
	driver = webdriver.Chrome()
	driver.get("http://www.baidu.com")
	try:
		elem = WebDriverWait(driver,10).until(EC.presence_of_element_located((By.NAME, "wd")))
		print("###############")

	finally:
		driver.quit()

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
	try:
		html = browser.page_source
		#print("============1==============:{}",html)
		if html == "":
			print("数据为空，请重新请求")
		else:
			doc = pq(html)
			oj = doc('.chart #tablelist #tdata .t_tr1')
			data = oj.items()
			for item in data:
				#print(item)
				for t in item.children().items():
					print(t.html())
			
								
			
			print("===========================")
			#print(oj)
	except BaseException as b:
		print("b:{}",b)
def main():
	'''
	for i in range(1, MAX_PAGE + 1):
		grabMovie(i)
	'''
	grabMovie(1)

	browser.close()

if __name__ =='__main__':
	v ="_name_2"
	b=v.replace("_","",1)
	print(b)
