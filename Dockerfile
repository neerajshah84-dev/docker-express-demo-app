#base image
FROM node:22.8.0-alpine

#setting the working directory
WORKDIR /app

#copying the dependency files
COPY package.json package-lock.json ./

#installing the dependencies
RUN npm install

#copying the remaing files
COPY . .

#running the app
CMD ["npm" , "run" , "start"]