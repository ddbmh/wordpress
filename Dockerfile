FROM wordpress

RUN echo Asia/Shanghai > /etc/timezone && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
COPY entry.sh /entry.sh
RUN chmod a+x /entry.sh
COPY  aliyun-oss-support/*  /var/www/html/wp-content/plugins/aliyun-oss-support/

ENTRYPOINT ["/entry.sh"]
CMD ["apache2-foreground"]
