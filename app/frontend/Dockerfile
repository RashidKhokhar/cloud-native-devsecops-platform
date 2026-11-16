FROM node:22-alpine AS build
RUN apk upgrade --no-cache
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginxinc/nginx-unprivileged:stable-alpine
USER root
RUN apk upgrade --no-cache
COPY --from=build /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN chmod 644 /etc/nginx/conf.d/default.conf
USER 101
EXPOSE 8081