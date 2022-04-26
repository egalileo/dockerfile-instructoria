FROM ubuntu:18:04

LABEL Version="1.0"
LABEL descripcion="Ejercicio Dockerfile dsi"
LABEL author="Galileo Padilla"

WORKDIR /home

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y nginx && \
    apt-get install -y git && \
    apt install -y curl && \
    curl -fsSl https://deb.nodesource.com/setup_16.x | tac | tac | bash - && \
    apt-get install -y nodejs && \
    npm install -g @quasar/cli && \
    git clone https://github.com/egalileo/dockerfile-instructoria.git && \
    git checkout main && \
    npm install && \
    quasar build && \
    cp -r dist/spa* /var/ww/html && \
    apt-get clean && \
    rm -rf /var/lib/apt/list/*

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
