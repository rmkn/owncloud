#!/bin/sh

sed -i -e 's/^    AllowOverride/    AllowOverride All/' /etc/httpd/conf/httpd.conf

cat <<EOT > /etc/httpd/conf.d/security.conf
TraceEnable Off
#Header always add X-Frame-Options SAMEORIGIN
FileETag MTime Size
EOT
