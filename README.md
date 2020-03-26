# ES-deploy

This docker-compose project has Elasticsearch and Kibana as backend with Nginx as frontend. It is a base configuration for your production enviroment with a fast setup.



You can add nodes on your cluster or fine tune the parameters easly. Reffer to this doc for more information:

- https://opendistro.github.io/for-elasticsearch-docs/docs/install/docker/

## Installing

Kibana and ES requires at last 4GB RAM avaiable (you can add a 4GB swap).

```
git clone https://github.com/edgarrc/ES-deploy.git
cd ES-deploy
docker-compose up -d
```

If you make any changes, then run the following command to rebuild

```
docker-compose build
```

Or 

```
 docker-compose up --build
```

Or if you are on a test enviroment and want to make sure everything is clear and fine before deployment

```
docker-compose down
docker system prune -a
docker-compose up -d
```

## Using

Wait at least 5 minutes after startup before using

- Kibana http port 80: http://yourhost
- Elasticsearch http port 92 : http://yourhost:92
