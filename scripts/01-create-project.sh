#!/bin/bash

source .env

gcloud projects create $PROJECT_ID --name=$PROJECT_NAME --organization=$ORGANIZATION_ID