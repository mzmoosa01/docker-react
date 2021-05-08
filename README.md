# Docker-react tutorial exercise

This is a simple react project created to learn the basics of Docker.
This project also uses Travis CI to run automated tests and automatically deploy updates to amazon AWS.
This was created with the guidance of [!Steven Grider's Udemy course](https://www.udemy.com/course/docker-and-kubernetes-the-complete-guide/?src=sac&kw=docker+kubernetes+complete)

# Getting started

You can test and get the application up and running by simply running docker-compose: 

``` docker-compose up ```
 
 or by using Docker run 

``` docker build -t <image-tag> -f Dockerfile.dev
     and then
     docker run <image-tag>
```
     
# Deployment 

Once code is committed to the master branch it will automatically be deployed to Amazon AWS via Travis CI. 
