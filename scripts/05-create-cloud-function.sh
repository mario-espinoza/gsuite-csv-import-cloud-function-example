#!/bin/bash

source .env

gcloud functions deploy $CF_NAME --entry-point=$CF_NAME \
  --source https://source.developers.google.com/projects/$PROJECT_ID/repos/$REPOSITORY_ID \
  --runtime $CF_RUNTIME \
  --trigger-bucket=$BUCKET_NAME \
  --set-env-vars=$CF_ENV_VARS

gcloud alpha functions add-iam-policy-binding $CF_NAME --member=allUsers --role=roles/cloudfunctions.invoker