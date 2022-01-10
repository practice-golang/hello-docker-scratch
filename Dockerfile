# syntax=docker/dockerfile:1
FROM scratch
COPY ./hello-docker-scratch /
# CMD ["echo ", "Hello Docker Scratch"]
CMD ["/hello-docker-scratch"]
