BUCKET_NAME := lacework-alliances
KEY_PREFIX := shift-left-devsecops-aws-lacework
CFT_PREFIX := templates/

PROFILE ?= ct
REGION ?= us-west-2

all: build

.PHONY: clean build

clean:

build: clean
	@aws --region $(REGION) s3 cp setup-pipelines.template.yml s3://$(BUCKET_NAME)/$(KEY_PREFIX)/$(CFT_PREFIX) --acl public-read






