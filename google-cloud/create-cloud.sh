gcloud deployment-manager deployments create docker \
--config docker.jinja \
--properties managerCount:3,workerCount:1,zone:europe-west1-d