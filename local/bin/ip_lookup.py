# Simple script to get IP address info.
# code something better than this please.
# 
import requests
from colorama import Fore, init, deinit
import time
import signal

def interrupt(s,f):
  print("Exiting...")
  exit()

signal.signal(signal.SIGINT, interrupt)

init()
ip = input("Enter IP Address: ")

if ip != "":

    request = requests.get(f"https://ipinfo.io/{ip}")
    response = request.json()
    err = response.get('error')
    
    if err != None:
        print(Fore.RED + "An error ocurred: " + err)
        time.sleep(5)
        exit()

    for pair in zip(response.keys(), response.values()):
        k = pair[0].capitalize()
        v = pair[1]

        print(f"{Fore.CYAN}[*] {k}: {v}")

    print(Fore.GREEN + "Successfully fetched information.")
    deinit() 

else:
    print(Fore.RED + "You must give an IP address.")
    deinit()
    exit()    

