# Etapa 1: build com Vite
FROM node:alpine AS build

WORKDIR /app

COPY . .

ARG VITE_API_URL
ENV VITE_API_URL=$VITE_API_URL

RUN echo "VITE_API_URL=${VITE_API_URL}" > .env

RUN npm install
RUN npm run build

# Etapa 2: servir com nginx
FROM nginx:alpine

COPY --from=build /app/dist /usr/share/nginx/html

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx/nginx.conf /etc/nginx/conf.d

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
