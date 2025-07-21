#use official Nginx image

FROM nginx:alpine

RUN apk add --no-cache coreutils && rm -rf /usr/share/nginx/html/*

#copy your files

COPY . /usr/share/nginx/html/


EXPOSE 80

	

