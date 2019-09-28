db = MySQLdb.connect(host='localhost',user='dbuser',passwd='aabb1234',
                     db='my_demo_db', port=3306, charset='utf8')
cursor = db.cursor() #建立游標

try:
    sql_str='select * from product' #select語法
    cursor.execute(sql_str)
    datarows = cursor.fetchall()
    print(cursor.rowcount)
    for row in datarows:
        print(row[1])

except Exception as err:
    print('unable to fetch data from db')
    print(err)
db.close()

