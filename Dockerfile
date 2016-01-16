FROM wordpress

RUN echo Asia/Shanghai > /etc/timezone && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
COPY entry.sh /entry.sh
COPY  aliyun-oss-support-master/*  /var/www/html/wp-content/plugins/aliyun-oss-support-master/

ENTRYPOINT ["/entry.sh"]
CMD ["apache2-foreground"]
