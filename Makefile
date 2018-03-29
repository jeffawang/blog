BUCKET ?= www.jeffawang.com

build:
	hugo

push:
	gsutil -m rsync -d -r public/ gs://${BUCKET}/

deploy: build push
