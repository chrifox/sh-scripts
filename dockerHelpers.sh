# $SCRIPTS/dockerHelpers.sh

# FULL DOCS available from - https://docs.docker.com/engine/reference/commandline/docker

# list active containers
alias dps="docker ps"
# list all containers
alias dpsa="docker ps -a"
# list images
alias dims="docker images"

# Import a new docker container
# for an existing container, ensure you rm the old container first
dockerImport() {
	URL=$1
	ENVIRONMENT=$2
	APP_NAME=$3
	TAG=$4

	docker pull $DOCKER_URL/$APP_NAME:latest
	docker stop $APP_NAME
	docker rm $APP_NAME
	docker run -dit --name ${TAG} --env ENV=$ENVIRONMENT $URL/$APP_NAME:latest

	# Display container status
	docker ps | grep $APP_NAME
}
