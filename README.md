# JADocker
Jenkins with Android enviroment docker image.This image is for addcn.

# Usage

## Step 1 
Build image.

```
docker build -t jenkins/addcn https://github.com/wslaimin/JADocker.git#addcn
```

## Step 2
Create and run container.You must mount a host directory like ```/JADocker/jenkins_home``` as jenkins home.

```
docker run --name jenkins -d -v jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 jenkins/addcn
```

> Replace jenkins_home to host directory.


## Step 3
Get into container.

```
docker exec -it jenkins /bin/bash
```

Download build tools and platform that your project use.For example:

```
docker sdkmanager "build-tools;27.0.3" "platforms;android-27"
```

## Step 4
Browser visits localhost:8080.<br/>
Enjoy it,now!

# Other Instructions

## Apks

You can find apks in /jenkins_home/android/apks.You can do whatever you want.

