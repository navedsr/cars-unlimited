# syntax=docker/dockerfile:1

FROM node:14.15.1 AS base

LABEL maintainer="navedsr@yahoo.com"

WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]

COPY . .

RUN npm install
RUN npm run build

FROM nginx:stable-alpine

COPY nginx.config /etc/nginx/conf.d/default.conf

COPY --from=base /app/build /usr/share/nginx/html
