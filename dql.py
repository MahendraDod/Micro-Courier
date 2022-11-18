import mysql.connector as myq

def show_r_details(id):
    mydb = myq.connect(
        host="localhost",
        user="root",
        password="password"
    )
    mycur = mydb.cursor()
    mycur.execute("USE COURIER")
    arg = tuple([id])
    mycur.callproc('show_r', arg)
    for result in mycur.stored_results():
        res = result.fetchall()
    if len(res) != 0:
        for row in res:
            i = row[0]
            o = row[1]
            d = row[2]
            dt = row[3]
            nm = row[4]
            ph = row[5]
    mycur.close()
    mydb.close()
    return o, d, dt, nm, ph
    
