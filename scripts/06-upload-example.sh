#!/bin/bash

source .env

gsutil cp ./data/example.csv gs://$BUCKET_NAME
 