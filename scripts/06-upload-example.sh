#!/bin/bash

source .env

gsutil cp ./data/*.csv gs://$BUCKET_NAME
 