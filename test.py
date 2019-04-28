

from selenium import webdriver
from selenium.webdriver.common.keys import Keys

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
if __name__ =='__main__':
	
	#search()
	#单元测试
	#unittest.main()
	waitS()
