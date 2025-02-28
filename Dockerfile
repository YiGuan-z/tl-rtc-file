FROM node:lts-alpine

COPY svr /tlrtcfile/svr

WORKDIR /tlrtcfile/svr

RUN npm install --registry=https://registry.npmmirror.com && npm run build:pro

ENTRYPOINT ["node"]
