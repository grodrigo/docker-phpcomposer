#!/bin/bash
time docker build \
         --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
         --build-arg VCS_REF=`git rev-parse --short HEAD` \
         --build-arg VERSION=`cat VERSION` \
         --build-arg VERSION-PHP=`cat VERSION-PHP` \
         --build-arg VERSION-COMPOSER=`cat VERSION-COMPOSER` \
         -t grodrigo/docker-phpcomposer . | tee build.log
