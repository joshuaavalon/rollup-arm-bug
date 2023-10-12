FROM node:18-alpine

WORKDIR /app

COPY src /app/src/
COPY package.json package-lock.json rollup.config.js /app/

RUN npm ci && \
    npm run build
