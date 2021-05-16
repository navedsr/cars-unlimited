# syntax=docker/dockerfile:1

# Define base docker image to start
FROM node:14.15.1 AS base

# Maintained by:
LABEL maintainer="navedsr@yahoo.com"

# Define working directory for applications
WORKDIR /app

# Copy configuration files to docker image
COPY ["package.json", "package-lock.json*", "./"]

# Copy application files to docker image
COPY . .

# Install packages
RUN npm install

# Build application package
RUN npm run build

# Install nginx webserver
FROM nginx:stable-alpine

# Copy nginx config to docker image
COPY nginx.config /etc/nginx/conf.d/default.conf

# Move application files to root folder
COPY --from=base /app/build /usr/share/nginx/html
