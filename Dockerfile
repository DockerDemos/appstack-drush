## DOCKER FILE FOR BUILDING AND RUNNING DRUSH IN A DOCKER CONTIANER

FROM centos:centos6
MAINTAINER Chris Collins <collins.christopher@gmail.com>

ENV DRUSH_URL https://github.com/drush-ops/drush/archive/master.tar.gz
ENV COMPOSER_URL https://getcomposer.org/installer
ENV REPO http://dl.iuscommunity.org/pub/ius/stable/CentOS/\$releasever/\$basearch/
ENV PKGS git curl tar which php56u-cli php56u-mysql php56u-gd mysql

RUN echo -e "\
[ius]\n\
name=IUS Community Repository\n\
baseurl=$REPO\n\
enabled=1\n\
gpgcheck=0\n\
priority=1\n\
" >> /etc/yum.repos.d/ius.repo

RUN yum install -y $PKGS && yum clean all
WORKDIR /bin
RUN mkdir /drush && curl -sL $DRUSH_URL | tar xz -C /drush --strip-components=1
RUN chmod +x /drush/drush && ln -s /drush/drush drush
RUN curl -vsL $COMPOSER_URL 2>&1 |php -- --install-dir=/bin && ln -s composer.phar composer
WORKDIR /drush
RUN composer install && composer global require drush/drush:6.*
WORKDIR /

ADD scripts/ /scripts/
RUN chmod -R +x /scripts/

CMD [ "drush", "--help" ]
