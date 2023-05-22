FROM node:18-slim

RUN apt-get update -y && apt-get install -y
RUN apt-get -y install git

WORKDIR /ecologue-userguide-site
COPY ./ ./
RUN npm install 
EXPOSE 3000

RUN chmod +x /ecologue-userguide-site/launch.sh

ENTRYPOINT [ "/ecologue-userguide-site/launch.sh" ]
