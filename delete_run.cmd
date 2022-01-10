FOR /f "tokens=*" %%i IN ('docker ps -q') DO docker stop %%i
FOR /f "tokens=*" %%i IN ('docker ps -q') DO docker rm %%i

docker image prune -f
FOR /f "tokens=*" %%i IN ('docker images -q') DO docker rmi %%i
