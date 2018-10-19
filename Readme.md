# Riemann sample

This is a sample for using riemann. The sample is dockerized, so you can run it easily.

```
docker-compose up -d
curl localhost:1111/create_event?event=name&service=backend
```

open `localhost:2222` to see your events and metrics
