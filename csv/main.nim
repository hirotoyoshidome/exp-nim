import std/parsecsv
import std/streams
import std/strutils

const filePath: string = "./sample.csv"

var st = newFileStream(filePath, FileMode.fmRead)

if st == nil:
    quit("file not exists.")

var p: CsvParser
open(p, st, filePath)

# skip header row.
discard readRow(p)

while readRow(p):
    let name: string = p.row[0]
    let age: int = parseInt(p.row[1])
    echo name, age
close(p)
