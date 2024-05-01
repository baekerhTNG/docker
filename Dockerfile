FROM node:20-alpine
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN mkdir -p /usr/src/app/dist
RUN cp -r /usr/src/app/src/static/* /usr/src/app/dist/
RUN npm run build
EXPOSE 3000
CMD ["node", "dist/server.js"]
