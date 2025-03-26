## Dockerfile Instructions
- `FROM       => Base Image`

- `LABELS     => Adds metadata to an image`

- `RUN        => execute commands in a new layer and commit the results`

- `ADD/COPY   => Adds files and folders into image`

- `CMD        => Runs binaries/commands on docker run`

- `ENTRYPOINT => Allows you to configure a container that will run as an executable , similar to CMD but have higher Priority`

- `VOLUMES    => Creats a mount point and marks it as holding externally mounted volumes`

- `EXPOSE     => Container listen on the specified network ports at runtime`

- `ENV        => Set the environment variable`

- `USER       => Sets yeh user name (or UID)`

- `WORKDIR    => Set the working directory`

- `ARG        => Defines a variable that user can pass at build time`

- `ONBUILD    => Adds to the image a trigger instruction to be executed at later time`