FROM node:16.18.0-buster

LABEL Name="poke-front"
LABEL Version="1.0.0"

ENV GITHUB_USER_NAME=GITHUB-user-name
ENV GITHUB_TOKEN=GITHUB-token
ENV GITHUB_EMAIL=GITHUB-email

WORKDIR /
COPY ./init.sh init.sh

RUN mkdir -p /repo
VOLUME /repo
WORKDIR /repo

EXPOSE 3010
CMD ["bash", "/init.sh"]
