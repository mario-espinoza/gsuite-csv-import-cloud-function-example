#!/bin/bash

source .env

gcloud alpha functions add-iam-policy-binding $CF_NAME --member=allUsers --role=roles/cloudfunctions.invoker
gcloud functions deploy $CF_NAME --runtime=$CF_RUNTIME --set-env-vars=$CF_ENV_VARS --trigger-bucket=$BUCKET_NAME