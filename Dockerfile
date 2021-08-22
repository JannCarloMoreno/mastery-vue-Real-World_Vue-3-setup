# develop stage
FROM node:16-alpine3.11 as develop-stage
WORKDIR /app
RUN npm install -g @vue/cli@4.5.0 -y
COPY ./Real-World_Vue-3/package*.json ./
#RUN npm install -g @vue/cli-service
RUN npm install
COPY ./Real-World_Vue-3 .
# build stage
# FROM develop-stage as build-stage
# RUN yarn build
# # production stage
# FROM nginx:1.15.7-alpine as production-stage
# COPY --from=build-stage /app/dist /usr/share/nginx/html
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]

