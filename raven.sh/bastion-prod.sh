#!/bin/bash
aws sso login --profile sling_prod_read && export AWS_PROFILE=sling_prod_read
ssh ssm-prod-db
