

from selenium import webdriver
from selenium.webdriver.common.keys import Keys

driver = webdriver.Chrome()
driver.get("http://www.baidu.com")
elemSearchName = driver.find_element_by_name("wd")
elemSearchName.clear() #先清空
elemSearchName.send_keys("python")
elemSearchName.send_keys(Keys.RETURN) #模拟键盘上的return按键 
assert "No results found." not in driver.page_source
print("driver.title:%s"%driver.title)
assert "百度一下，你就知道" in driver.title