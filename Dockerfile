FROM php:7.4-fpm-alpine

MAINTAINER "Rodrigo Gil Lopetegui" <grodrigo.dev+docker@gmail.com>

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
ARG VERSION-COMPOSER
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="Docker composer php" \
      org.label-schema.description="Run composer inside php container" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/grodrigo/docker-app-example.git" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer --version=$VERSION-COMPOSER

RUN mkdir -p /var/www

WORKDIR /var/www

#ENTRYPOINT ["composer"]

#CMD ["php", "-a"]

#CMD ["--help"]

