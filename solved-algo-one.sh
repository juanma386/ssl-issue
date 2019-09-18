# if apachectl configtest = OK
# or httpd -t = OK
# apply this solution:
mv /etc/httpd/conf.d/ssl.conf  /etc/httpd/conf.d/ssl.conf._original
mv /etc/httpd/conf.d/le-redirect-*.conf  /etc/httpd/conf.d/le-redirect-*.conf._original
service httpd  start#{restart|reload|start}
service httpd  restart
