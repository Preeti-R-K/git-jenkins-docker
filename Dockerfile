FROM nginx:alpine
COPY login.html /usr/share/nginx/html/login.html
COPY . /usr/share/nginx/html