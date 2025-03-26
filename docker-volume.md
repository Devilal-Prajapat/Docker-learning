## Docker volume
Docker has two otions for containers to store files in the host machine volumes and bind mounts, only difference is that volumes are managed by Docker itself.

### volumes
volumes -- its a wrapper, where in the docker's volume directory, it will create a directory and then you can attach taht to your container.

volumes managed by docker `/var/lib/docker/volumes/` on linux.

### Bind mounts
Stored any where on host system


