FROM node:16
LABEL Name=steam-pics-api Version=1.0.0
WORKDIR /root/
COPY . .
RUN npm install
ENV OPENSHIFT_IOJS_IP=0.0.0.0
ENV OPENSHIFT_IOJS_PORT=23455
ENTRYPOINT [ "node", "app.js" ]
