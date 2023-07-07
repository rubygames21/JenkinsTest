FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
CMD ["node", "--version"]
CMD ["ls"]
CMD ["ls"]
