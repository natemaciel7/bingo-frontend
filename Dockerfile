FROM node:alpine AS build

WORKDIR /app

COPY . .

ARG VITE_BACKEND
ENV VITE_BACKEND=$VITE_BACKEND
RUN echo "VITE_BACKEND=${VITE_BACKEND}" > .env

RUN npm install
RUN npm run build

FROM nginx:alpine

COPY --from=build /app/dist /usr/share/nginx/html

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx/nginx.conf /etc/nginx/conf.d

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
