# Specify base image
FROM node:alpine as builder
WORKDIR /app

# Install some dependencies
COPY ./package.json ./

RUN npm config set registry http://registry.npmjs.org/
RUN npm set strict-ssl false
RUN npm install --legacy-peer-deps
RUN npm set strict-ssl true

COPY . .
RUN npm run build

FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html
