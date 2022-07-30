import std/json
import std/tables


var stringJson: string = """{"key": "value"}"""
let jsonNode = parseJson(stringJson)

# "value"
echo jsonNode["key"]

# value
echo jsonNode["key"].getStr()

var obj = {"key": "value"}

echo obj

# array
echo type(obj)
echo obj[0][0]

# hashtable
var tbl = obj.toTable
echo tbl
echo tbl["key"]


let jsonObj = %* {"key": "val"}
echo jsonObj
# jsonNode
echo type(jsonObj)

# json -> string
var prettyJsonObj: string
prettyJsonObj = jsonObj.pretty()
echo prettyJsonObj
