# Simple script to get IP address info.
# code something better than this please.
# 
import requests
from colorama import Fore, init, deinit
import time
import signal

def interrupt(k,v):
  print("Exiting...")
  exit()

signal.signal(signal.SIGINT, interrupt)

init()
ip = input("Enter IP Address: ")

if ip != "":

    request = requests.get(f"https://ipinfo.io/widget/demo/{ip}")
    response = request.json()
    err = response.get('error')
    
    if err != None:
        print(Fore.RED + "An error ocurred: " + err)
        time.sleep(5)
        exit()

    response = request.json()["data"]
    country = response["country"]
    city = response["city"]
    region = response["region"]
    if response.get("hostname") == None:
        hostname = "No hostname"
    else:
        hostname = response["hostname"]
    loc = response["loc"]
    org = response["org"]
    asn = response["asn"]["asn"]
    asnname = response["asn"]["name"]
    routes = response["asn"]["route"]
    conntype = response["asn"]["type"]
    asndomain = response["asn"]["domain"]
    print(Fore.CYAN + "[*] IP: " + ip)
    print(Fore.CYAN + "[*] Hostname: " + hostname)
    print(Fore.CYAN + "[*] Country: " + country)
    print(Fore.CYAN + "[*] City: " + city)
    print(Fore.CYAN + "[*] Region: " + region)
    print(Fore.CYAN + "[*] Location (Lat, Long): " + loc)
    print(Fore.CYAN + "[*] Organization: " + org)
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

