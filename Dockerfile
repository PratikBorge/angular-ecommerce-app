FROM node:18
LABEL engg="prat"

USER root
COPY . .
WORKDIR /client
RUN npm install
CMD ["ng", "serve"]