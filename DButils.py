import MySQLdb
from ConfigUtils import ConfigUtils
class DButils(object):
    def __init__(self,filename,section):
        super(DButils, self).__init__()
        #read config
        cfg = ConfigUtils(filename).config
        self.cfg = cfg
        self.section = section
        #init mysql connection
        self.conn= MySQLdb.connect(
            host=cfg.get(section,'host'),
            port = cfg.getint(section,'port'),
            user=cfg.get(section,'user'),
            passwd=cfg.get(section,'passwd'),
            db=cfg.get(section,'db'),
            connect_timeout=cfg.getint(section,'connect_timeout')
        )
        self.cur = self.conn.cursor()    
     
    def fetchmany(self,sql):
        sql = sql.replace('{$db}',self.cfg.get(self.section,'db'))
        try:
            return self.cur.fetchmany(self.cur.execute(sql))
        except Exception as e:
            print (traceback.print_exc())
            print (sql)
   
    def fetchone(self,sql):
        sql = sql.replace('{$db}',self.cfg.get(self.section,'db'))
        try:
            self.cur.execute(sql)
            return self.cur.fetchone()
        except Exception as e:
            print (e)
            print (sql)

    def create(self,sql):
        try:
            self.cur.execute(sql)
            self.conn.commit()
        except Exception as e:
            print (traceback.print_exc())

    def is_table_exit(self,tableName):
        show_sql = 'show tables;'
        try:
            return tableName in self.cur.fetchmany(self.cur.execute(show_sql))
        except Exception as e:
            print (traceback.print_exc())
    def close_db(self):
        self.cur.close()
        self.conn.close()

if __name__=='__main__':


    db = DButils('init.cfg','src_mysql')


    try:
        b = db.fetchone('select * from td_double_color_ball limit 1')
        print(b)
    finally:
        db.close_db()