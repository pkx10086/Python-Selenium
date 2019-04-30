import configparser

class ConfigUtils(object):
     def __init__(self,fileName):
         super(ConfigUtils, self).__init__()
         try:
             self.config = configparser.ConfigParser()
             self.config.read(fileName)
         except IOError as e:
             print  (traceback.print_exc())

cu = ConfigUtils('init.cfg')

#打印所有的section  
print (cu.config.sections())

['src_mysql', 'dsc_mysql']

#删除指定section  
cu.config.remove_section('src_mysql') 
True

#打印所有的section  
cu.config.sections() 
['dsc_mysql']   

#打印对应section的所有items键值对
cu.config.items('dsc_mysql')
[('passwd', 'mytest'), ('charset', 'uft8'), ('db', 'anlitest'), ('port', '3306'), ('host', '192.168.10.222'), ('user', 'optusr'), ('connect_timeout', '120')]

#写配置文件  
#增加新的section  
cu.config.add_section('src_mysql')  
#写入指定section增加新option和值   
cu.config.set("src_mysql", "passwd", "123456")  
cu.config.set("src_mysql", "charset", "utf-8")   
cu.config.set("src_mysql", "db", "lottery_ticket")  
cu.config.set("src_mysql", "port", "3306")   
cu.config.set("src_mysql", "host", "localhost")   
cu.config.set("src_mysql", "user", "root")   
cu.config.set("src_mysql", "connect_timeout", "30000")   
#写回配置文件  
cu.config.write(open("init.cfg", "w"))