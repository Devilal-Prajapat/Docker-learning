
# FROM python:latest
FROM ubuntu:22.04
RUN apt update && apt install -y python3 python3-pip 
WORKDIR /app
COPY main.py /app
CMD ["python3", "main.py"]
