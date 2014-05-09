aws-eb-docker-demo
==================

Demo of AWS ElasticBeanstalk w/ Docker

Build the image:
```
docker build -t ktheory/aws-eb-docker-demo .
```

Publish the build (optional)
```
docker commit <container id> ktheory/aws-eb-dockedemo
```

Make a zip for Elastic Beanstalk:
```
git archive HEAD --format=zip > `git log -n 1 --format=%H`.zip
```
