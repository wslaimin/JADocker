FROM jenkins/jenkins:lts

MAINTAINER LM

ENV ANDROID_HOME=$JENKINS_HOME/android
ENV PATH="$ANDROID_HOME/tools/bin:$PATH"

COPY ./tools /usr/share/jenkins/ref/android/tools
