REPO_NAME=s410071012/remodeling_platform
VERSION=1.0


build-image:
	
	docker build --tag ${REPO_NAME}:${VERSION} .
	docker image tag ${REPO_NAME}:${VERSION} ${REPO_NAME}:latest 	

push-image: build-image
	docker push ${REPO_NAME}:${VERSION}
	docker push ${REPO_NAME}:latest
	
