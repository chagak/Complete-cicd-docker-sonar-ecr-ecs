# Complete-cicd-docker-sonar-ecr-ecs
docker build -t honeyweb .
docker run -d -p 85:85 honeyweb

mkdir honey-website
cd honey-website
npm init -y
This will create a package.json file with the default configuration.

node app.js
npm install express


## The server should now be running on http://localhost:3000. You can visit the following pages:

Home: http://localhost:3000/
About: http://localhost:3000/about
Contact: http://localhost:3000/contact