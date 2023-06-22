from colorama import Fore, Back, init
from signal import signal, SIGINT
from time import sleep
import requests
from urllib3.exceptions import NewConnectionError


def handle_ctrl(a, b):
    print("Exiting...")
    exit()

signal(SIGINT, handle_ctrl)

domain = str(input("Enter domain: "))
qtype = str(input("Enter query type: ")).lower()
page = int(input("Enter page: "))

endpoint = f"https://api.securitytrails.com/v1/history/{domain}/dns/{qtype}?page={page}"
headers = {
    "Accept": "application/json",
    "APIKEY": "you know"
}

try:
  init()
  request = requests.get(endpoint, headers=headers)
  result = request.json()
  pages = int(result["pages"])
  records = result["records"]
  if pages < 1:
    print("This domain has no history or doesn't exists.")
    exit()
  print(Fore.CYAN + f"Domain DNS record history. (Pages: {pages})")
  for item in records:
    providers = ""
    for provider in item["organizations"]:
      providers += provider + " "
    print(Fore.GREEN + f"- Last seen: {item['last_seen']}\r")
    print(Fore.GREEN + f"- Providers: {providers}\r")
    print(Fore.GREEN + "IPs:")
    for ip in item["values"]:
        print(" " + ip["ip"])
    print("\n")
#   print(Fore.LIGHTGREEN_EX + f"Output wrote on {domain}.result")
  sleep(10)
except NewConnectionError:
  print("You don't have internet connection.")
  exit()
