# mailcatcher
mailcatcher in docker

# usage

```sh
docker run -d -p 1080:1080 -p 1025:1025 pocari/mailcatcher
```

### Your SMTP server settings
- host: ${docker-host's ip}
- post: 1025

# Checking sent mails
access to `http://${docker-host's ip}:1080`
