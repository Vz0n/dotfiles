import requests
from colorama import Fore, Back, init, deinit
import time
import signal

def interrupt(k,v):
  print("Exiting...")
  exit()

signal.signal(signal.SIGINT, interrupt)

init()
ip = input("Enter IP Address: ")

if ip != "":

    request = requests.get("https://ip-geolocation.whoisxmlapi.com/api/v1?apiKey=APIKEYHERE&ipAddress=" + ip)

    if(request.status_code != 200):
        print(Fore.RED + "Something strange happened...")
        time.sleep(5)
        exit()

    response = request.json()
    country = response["location"]["country"]
    city = response["location"]["city"]
    isp = response["isp"]
    asn = response["as"]["asn"]
    asnname = response["as"]["name"]
    routes = response["as"]["route"]
    conntype = response["as"]["type"]
    asndomain = response["as"]["domain"]
    print(Fore.CYAN + "[*] IP: " + ip)
    print(Fore.CYAN + "[*] Country: " + country)
    print(Fore.CYAN + "[*] City: " + city)
    print(Fore.CYAN + "[*] ISP: " + isp)
    print(Fore.CYAN + "[*] ASN: " + str(asn))
    print(Fore.CYAN + "[*] ASN's name: " + asnname)
    print(Fore.CYAN + "[*] Routes: " + routes)
    print(Fore.CYAN + "[*] Domain: " + asndomain)
    print(Fore.CYAN + "[*] Connection type: " + conntype)
    print(Fore.GREEN + "Closing in 20 seconds...")
    time.sleep(20)
    deinit() 

else:
    print(Fore.RED + "You must give an IP address.")
    deinit()
    exit()    

