# ES-deploy

This docker-compose project has Elasticsearch and Kibana as backend with Nginx as frontend. It is a base configuration for your production enviroment with a fast setup.



You can add nodes on your cluster or fine tune the parameters easly. Reffer to this doc for more information:

- https://opendistro.github.io/for-elasticsearch-docs/docs/install/docker/

## Installing

```
git clone https://github.com/edgarrc/ES-deploy.git
cd ES-deploy
docker-compose up -d
```

If you make changes, then run:

```
docker-compose build
```

or 

```
 docker-compose up --build
```

or if you are on a test enviroment and want to make sure it is everything fine before deployment

```
docker-compose down
docker system prune -a
docker-compose up -d
```

## Using

- Kibana http port 80: http://yourhost
- Elasticsearch http port 92 : http://yourhost:92
