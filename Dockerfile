# 1 choose base image, see https://hub.docker.com/search?q=&type=image&image_filter=official
# 2 set workdir to /usr/src/app
# 3 copy all files to workdir
# 4 install node dependencies
# 5 create dist folder inside workdir
# 6 copy static files to dist folder
# 7 build the project using tsc
# 8 expose port 3000
# 9 run the server