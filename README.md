# Opis projektu

Projekt ma na celu utworzenie klastra k3s na którym zostanie uruchomiony serwer ollama oraz open webui.

# Użyta infrastruktura

5 x Raspberry Pi 4:
  - 1 x Raspberry Pi 4 jako Load balancer. Ze względu na ograniczoną ilość raspberry pi, load balancer utworzony przy pomocy nginxa i tylko na jednym hoście (brak wysokiej dostępności)
  - 3 x Raspberry Pi 4 jako Control Plane (zapewnienie wysokiej dostępności)
  - 1 x Raspberry Pi 4 jako Agent

# Opis realizacji projektu

Krok 1. Przygotowanie Raspberry Pi 4:
  - Zainstalowanie systemu operacyjnego (Raspberry pi os lite(64-bit)) przy pomocy Raspberry Pi Imager
    - Ustawienie dla każdego hosta indywidualnego hostname
    - Ustawienie dla każdego hosta indywidualnego loginu i hasła
    - Skonfigurowanie połączenia SSH
  - Przypisanie indywidualnego adresu IP dla każdego hosta

Krok 2. Uruchomienie scenariusza ansible
  - Przed uruchomieniem scenariusza dostosuj plik ewidencji "inventory/ewidencja.yaml"
  - Następnie uruchom scenariusz site.yaml

Po pomyślnym wykonaniu scenariusza, wszystkie hosty zostaną automatycznie przygotowane.
Zostanie uruchomiony serwer ollama oraz open webui jako klient z obsługą serwera ollama.
Open webui będzie dostępny pod adresem "http://[adres_ip_lb_host]:80"
