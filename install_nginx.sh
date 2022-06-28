yum install gcc g++
yum install pcre pcre-devel
yum install zlib zlib-devel
yum install openssl openssl-devel

tar -zxvf nginx-1.22.0.tar.gz

mkdir /var/temp/nginx -p

cd nginx-1.22.0/

./configure \                           
--prefix=/usr/local/nginx \
--pid-path=/var/run/nginx/nginx.pid \
--lock-path=/var/lock/nginx.lock \
--error-log-path=/var/log/nginx/error.log \
--http-log-path=/var/log/nginx/access.log \
--with-http_gzip_static_module \
--http-client-body-temp-path=/var/temp/nginx/client \
--http-proxy-temp-path=/var/temp/nginx/proxy \
--http-fastcgi-temp-path=/var/temp/nginx/fastcgi \
--http-uwsgi-temp-path=/var/temp/nginx/uwsgi \
--http-scgi-temp-path=/var/temp/nginx/scgi

sudo make
sudo make install

# nginx is installed in /usr/local/nginx/
sudo ln -s /usr/local/nginx/sbin/nginx /usr/bin/nginx

# edit the conf.file
sudo vim /usr/local/nignx/conf/nginx.conf
