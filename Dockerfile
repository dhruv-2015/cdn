FROM ubuntu:18.04

RUN apt update && apt install wget -y && apt upgrade -y

RUN wget -O di.sh https://github.com/madzharov/ministra-install-ubuntu-20.04/raw/main/ministra_install_ubuntu.20.04.sh

RUN chmod +x di.sh

RUN bash di.sh

CMD ["php", "-S", "0.0.0.0:9999"]
