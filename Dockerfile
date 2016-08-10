## DOCKER FILE FOR BUILDING AND RUNNING DRUSH IN A DOCKER CONTIANER

FROM centos:centos7
MAINTAINER Chris Collins <collins.christopher@gmail.com>

ENV DRUSH_DL https://github.com/drush-ops/drush/archive
ENV DRUSHES "master 8.0.5 7.2.0 6.7.0"
ENV COMPOSER_URL https://getcomposer.org/installer
ENV REPO http://dl.iuscommunity.org/pub/ius/stable/CentOS/\$releasever/\$basearch/
ENV PKGS git curl tar which php56u-cli php56u-mysql php56u-gd php56u-ldap php56u-pecl-memcache php56u-pgsql mysql postgresql

RUN echo -e "\
[ius]\n\
name=IUS Community Repository\n\
baseurl=$REPO\n\
enabled=1\n\
gpgcheck=0\n\
priority=1\n\
" >> /etc/yum.repos.d/ius.repo

ADD install_drush.sh /install_drush.sh

RUN yum install -y $PKGS && yum clean all
RUN drushes=($DRUSHES) ; bash -x /install_drush.sh ${drushes[@]} \
    && ln -s /bin/drush-${drushes[1]} /bin/drush

ADD scripts/ /scripts/
RUN chmod -R +x /scripts/

CMD [ "drush", "--help" ]
