- This is simple express app running on port 3000
  then dockerize the app

- After creating the app create the docker image using command

docker build -t docker-demo-app .

- Run the docker image using the command

docker run -p 3000:3000 docker-demo-app

check the app on browser

# localhost:3000

===
sudo yum update -y

sudo yum install -y docker

sudo service docker start

sudo usermod -a -G docker ec2-user

put the aws account .pem file in project root directory

change permission of pem file
chmod 600 vs-kp-1.pem

upload project files using following command
scp -i vs-kp-1.pem Dockerfile index.js package.json package-lock.json ec2-user@<public-ip>:/home/ec2-user/downloads

then go to AWS console terminal and check files

> ls

run command to create docker image on AWS now

sudo docker build -t ec2-flask:v1.0 -f Dockerfile .

sudo docker run -d -p 3000:3000 ec2-flask:v1.0

run this URL in browser
http://<public-ip>:3000/
