- This is simple express app running on port 3000
  then dockerize the app

- After creating the app create the docker image using command

docker build -t docker-demo-app .

- Run the docker image using the command

docker run -p 3000:3000 docker-demo-app

check the app on browser

localhost:3000
