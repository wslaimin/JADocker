# JADocker
Jenkins with Android enviroment docker image.

# Usage

## Step 1
[Install git lfs](https://git-lfs.github.com/)

## Step 2
Build image.

```
docker build -t jenkins/addcn https://github.com/wslaimin/JADocker.git
```

## Step 3
Create and run container.You must mount a host directory like ```/JADocker/jenkins_home``` as jenkins home.

```
docker run --name jenkins -d -v jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 jenkins/addcn
```

> Replace jenkins_home to host directory.


## Step 4
Get into container.

```
docker exec -it jenkins /bin/bash
```

Download build tools and platform that your project use.For example:

```
sdkmanager "build-tools;27.0.3" "platforms;android-27"
```

## Step 5
Browser visits localhost:8080.<br/>
Enjoy it,now!

