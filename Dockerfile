#the base image since its an app based on JS
FROM node

WORKDIR /app
COPY . .

#this is needed to host the build output (index.html) of he angular app
#since the angular dev server wil not be used (as its prod env & not dev)
#the default port of http-server is 8080, we can change it.
#(http-server is lightweight sever to run application we will install that inside our image)

RUN npm install -g http-server
EXPOSE 9999
CMD ["http-server","--port","9999"]