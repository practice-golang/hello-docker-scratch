set GOOS=linux
set GOARCH=amd64

go build -o .

docker build --tag hello-image:0.0.1 .
docker run --name hello-container -p 8864:80 --rm hello-image:0.0.1
