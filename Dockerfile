FROM node:18-slim

RUN apt-get update -y && apt-get install -y
RUN apt install git-all -y

WORKDIR /ecologue-userguide-site
COPY ./ ./
RUN npm install --loglevel verbose
EXPOSE 3000
RUN npm run build

ENTRYPOINT [ "/ecologue-userguide-site/launch.sh" ]
