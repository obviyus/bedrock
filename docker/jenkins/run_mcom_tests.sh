#!/bin/bash -xe
DOCKER_REPOSITORY=${DOCKER_REPOSITORY:-mozorg/mcom-tests}

docker pull ${DOCKER_REPOSITORY}
docker run -v `pwd`/results/:/app/results -e BASE_URL=${BASE_URL} -e BUILD_TAG=${BUILD_TAG} -e SAUCELABS_USERNAME=${SAUCELABS_USERNAME} -e SAUCELABS_API_KEY=${SAUCELABS_API_KEY} ${DOCKER_REPOSITORY}
