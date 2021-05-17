# CI/CD & Docker
---

## CASE-STUDY
Our Engineering team have produced an application which now needs to be automatically built and deployed using a fully automated CI & CD Process. The team have asked us to help with this solution.

---

## Task 1: Creating a Docker file

You have been asked to create a `docker` file which will run the application which is written using `react` and the lts node version `node 14.15.1`. The file should:
  - Install node modules within the Docker image only
  - Run the application (uses npm start) exposed on port `3000`
  
### Result Format

How to deploy application in production:

Clone repo
`git clone git@github.com:navedsr/cars-unlimited.git`

Navigate into cloned repo

`cd cars-unlimited`

Build docker image

`docker build -t mmt-cars:prod -f Dockerfile.prod .`

Build docker image

`docker run -d -p 3001:80 mmt-cars:prod`

Check app deployment
  - Open any web browser
  - Type (http://localhost:3000)

---
## Task 2: Deploy application to `Test` and `Production`

### Result Format

How to deploy application in test:

Clone repo
`git clone git@github.com:navedsr/cars-unlimited.git`

Navigate into cloned repo

`cd cars-unlimited`

Build docker image

`docker build -t mmt-cars:test -f Dockerfile.test .`

Build docker image

`docker run -d -p 3000:3000 mmt-cars:test`

Run the test
`docker ps -a`

`docker exec -it <container-id> /bin/bash`

`npm run`


