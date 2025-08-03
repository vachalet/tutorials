# set the base image
FROM node:24

# set working directory
WORKDIR /app

VOLUME /app

ENTRYPOINT ["/usr/local/bin/npm", "run", "serve" ]

EXPOSE 8080
