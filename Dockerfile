FROM node:18-slim

RUN apt-get update -y && apt-get install -y
RUN apt-get -y install git

WORKDIR /ecologue-userguide-site
COPY ./ ./
RUN npm install --loglevel verbose
EXPOSE 3000

ENTRYPOINT [ "/ecologue-userguide-site/launch.sh" ]
