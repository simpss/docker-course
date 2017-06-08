gcloud deployment-manager deployments create docker \
--config https://docker-for-gcp-templates.storage.googleapis.com/v8/Docker.jinja \
--properties managerCount:3,workerCount:1,zone:europe-west1-d