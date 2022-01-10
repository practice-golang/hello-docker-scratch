# syntax=docker/dockerfile:1
FROM scratch
COPY ./hello-docker-scratch /
CMD ["/hello-docker-scratch"]
