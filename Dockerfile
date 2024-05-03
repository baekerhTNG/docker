# 1 choose base image, see https://hub.docker.com/search?q=&type=image&image_filter=official
FROM node:20-alpine
# 2 set workdir to /usr/src/app
WORKDIR /usr/src/app
# 3 copy all files to workdir
COPY . .
# 4 install node dependencies
RUN npm install
# 5 create dist folder inside workdir
RUN mkdir dist
# 6 copy static files to dist folder
RUN cp src/static/* dist
# 7 build the project using tsc
RUN npm run build
# 8 expose port 3000
EXPOSE 3000
# 9 run the server
CMD node dist/server.js