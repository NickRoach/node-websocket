GOOGLE_PROJECT_ID=spring-boot-dockerized
CLOUD_RUN_SERVICE=node-websocket-server

gcloud builds submit --tag gcr.io/$GOOGLE_PROJECT_ID/$CLOUD_RUN_SERVICE \
--project=$GOOGLE_PROJECT_ID

gcloud run deploy $CLOUD_RUN_SERVICE \
--image gcr.io/$GOOGLE_PROJECT_ID/$CLOUD_RUN_SERVICE \
--add-cloudsql-instances $INSTANCE_CONNECTION_NAME \
--update-env-vars INSTANCE_CONNECTION_NAME=$INSTANCE_CONNECTION_NAME,DB_PASS=$DB_PASS,DB_NAME=$DB_NAME,DB_USER=$DB_USER \
--platform managed \
--region australia-southeast1 \
--allow-unauthenticated \
--project=$GOOGLE_PROJECT_ID