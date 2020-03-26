FROM nginx:1.16
COPY ./kibana /etc/nginx/conf.d/default.conf
COPY ./elasticsearch /etc/nginx/conf.d/elasticsearch.conf
EXPOSE 80 9200
