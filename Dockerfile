FROM jenkins/jenkins:lts

MAINTAINER LM

ENV ANDROID_HOME=$JENKINS_HOME/android
ENV ACIS_HOME=$ANDROID_HOME/sh
ENV APK_DIR=$ANDROID_HOME/apks
ENV PATH="$ANDROID_HOME/tools/bin:$PATH"

COPY ./sh /usr/share/jenkins/ref/android/sh
COPY ./tools /usr/share/jenkins/ref/android/tools
COPY ./Android模板 /usr/share/jenkins/ref/jobs/Android模板
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

RUN install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
USER root
RUN apt-get update \
    && apt-get install uuid-runtime