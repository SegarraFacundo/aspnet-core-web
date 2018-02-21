# aspnet-core-web

```docker rm -f $(sudo docker ps -aq)```

```docker build -t webapp .```

```docker run -p 8080:80 -v "$(pwd)/src:/code/app" webapp```
