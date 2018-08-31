FROM nginx:alpine 
RUN sed -i '9iautoindex on;' /etc/nginx/conf.d/default.conf
RUN rm -rf /usr/share/nginx/html/*
ADD ./ /usr/share/nginx/html
