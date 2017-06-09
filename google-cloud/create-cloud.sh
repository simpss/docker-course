gcloud deployment-manager deployments create docker \
--config https://raw.githubusercontent.com/simpss/docker-course/master/google-cloud/Docker.jinja \
--properties managerCount:3,workerCount:1,zone:europe-west1-d
