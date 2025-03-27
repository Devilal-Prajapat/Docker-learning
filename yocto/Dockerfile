FROM ubuntu:20.04
LABEL "Author"="Devilal"
LABEL "Project"="web"
ENV DEBIAN_FRONTEND=noninteractive
ENV USER_NAME=cuteradio
ENV PROJECT=cuteradio
RUN apt update && apt install -y sudo

# Create a non-root user 'test' with sudo privileges

RUN useradd -m -s /bin/bash $USER_NAME && echo "$USER_NAME ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER_NAME

# Switch to non-root user
USER $USER_NAME
VOLUME /home/$USER_NAME/data
WORKDIR /home/$USER_NAME/data

# Start Bash shell
CMD ["/bin/bash"]