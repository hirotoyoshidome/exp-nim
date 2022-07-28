import std/net
import std/httpclient
import std/htmlparser
import std/streams
import std/xmltree


const timeout: int = 3000
let client = newHttpClient(sslContext=newContext(verifyMode=CVerifyPeer), timeout=timeout)
let userAgent: string = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36."
client.headers = newHttpHeaders({"user-agent": userAgent})

let url: string = "http://kichiru.com"
let response = client.request(url)

let xml = parseHtml(newStringStream(response.body))
var anchors: seq[XmlNode]
anchors = findAll(xml, "a")

for a in anchors:
    echo a.innerText
    break
