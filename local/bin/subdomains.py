from colorama import Fore, Back, init
from signal import signal, SIGINT
from time import sleep
import requests
import os
from urllib3.exceptions import NewConnectionError

def handle_ctrl(a, b):
    print("Exiting...")
    exit()

signal(SIGINT, handle_ctrl)

domain = str(input("Enter domain: "))

endpoint = f"https://api.securitytrails.com/v1/domain/{domain}/subdomains?children_only=true&include_inactive=false"
headers = {
    "Accept": "application/json",
    "APIKEY": os.getenv('STRAILS_API_KEY')
}

try:
  init()
  request = requests.get(endpoint, headers=headers)
  result = request.json()
  if result["subdomain_count"] == None:
    print(Fore.RED + "Este dominio parece no tener subdominios o no existe.")
    exit()
  print(Fore.CYAN + f"Subdomain count: {result['subdomain_count']}")
  arr = result["subdomains"]
  for i in arr:
    print(Fore.GREEN + f"- {i}\r")
except NewConnectionError:
  print("You don't have internet connection.")
  exit()




