# Riemann sample

This is a sample for using riemann. The sample is dockerized, so you can run it easily.

```
docker-compose up -d
curl localhost:4567?event=<name>&tag=<tag>&description=<description>
```

open `localhost:2222` to see your events and metrics

## Services (docker-compose file)

The compose file describes all necessary to run this

### Riemann server

That is it. It mounts the config file

### Riemann producer

This is an event generator, it's just an endpoint that uses sinatra and mettric to generate events.

