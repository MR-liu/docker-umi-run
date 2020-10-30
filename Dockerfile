FROM nginx

ENV NPM_CONFIG_LOGLEVEL warn
ENV NPM_CONFIG_REGISTRY http://npm.zhonganinfo.com
ENV SASS_BINARY_SITE http://npm.taobao.org/mirrors/node-sass

COPY ./dist/ /usr/share/nginx/html/
COPY ./vhost.nginx.conf /etc/nginx/conf.d/pea3nut-info.conf

EXPOSE 80
