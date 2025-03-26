# FROM ubuntu:latest
# RUN apt update
# RUN useradd -m test
# USER test
# CMD ["/bin/bash"]
FROM ubuntu:latest

# Update package lists
RUN apt update && apt install -y sudo

# Create a non-root user 'test' with sudo privileges
RUN useradd -m -s /bin/bash test && echo "test ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/test

# Switch to non-root user
USER test
WORKDIR /home/test

# Start Bash shell
CMD ["/bin/bash"]

