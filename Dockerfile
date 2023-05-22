FROM node:18-slim

WORKDIR /ecologue-userguide-site
COPY ./ ./
RUN npm install --loglevel verbose
EXPOSE 3000
RUN npm run build

ENTRYPOINT [ "/ecologue-userguide-site/launch.sh" ]
