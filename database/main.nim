import std/db_mysql

const host: string = "127.0.0.1"
const user: string = "root"
const password: string = "root"
const name: string = "test"

let db = open(host, user, password, name)

let query = """
select * from `table` limit 10;
"""
for row in db.fastRows(sql(query)):
    echo row

db.close()
