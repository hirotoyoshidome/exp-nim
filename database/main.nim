import std/db_mysql

const host: string = "localhost"
const user: string = "root"
const password: string = "root"
const name: string = "test"

let db = open(host, user, password, name)

let query = """
select * from table;
"""
for row in db.fastRows(sql(query)):
    echo row

db.close()
