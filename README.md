# alabastida/autosubliminal

This is my take on creating an image to run autosubliminal in a container. Please bear with me, it's my first image ever.

### On your docker-compose.yml file you could configure the container as follows:

```
subliminal:
    image: alabastida/autosubliminal:latest
    container_name: subliminal
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=America/Monterrey
    restart: "unless-stopped"
    volumes:
      - /your/video/path:/data
      - /etc/timezone:/etc/timezone
      - /etc/localtime:/etc/localtime
    ports:
      - 8084:8083 # here im routing the local 8083 port of the autosubliminal server image to an open port on my container host, if you have 8083 available omit this section
```
