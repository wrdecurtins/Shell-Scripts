#!/bin/bash
aws sso login --profile eng-infra && export AWS_PROFILE=eng-infra
ssh ssm-eng-db
