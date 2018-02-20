# aspnet-core-web

```sudo docker rm -f $(sudo docker ps -aq)```

```sudo docker build -t webapp .```

```sudo docker run -p 8080:80 -v "$(pwd)/src:/code/app" webapp```
