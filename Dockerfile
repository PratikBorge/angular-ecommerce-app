FROM node:18
LABEL engg="prat"

USER root
COPY . .
WORKDIR /backend
RUN npm install
WORKDIR /client
RUN npm install
WORKDIR /backend
RUN npm run dev
WORKDIR /client
CMD ["ng", "serve"]