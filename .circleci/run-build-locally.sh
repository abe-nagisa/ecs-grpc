#!/bin/bash

curl --user ab3a8f58611ec2b06e7ddf6247df3d7aeef97f47: \
    --request POST \
    --form revision=dea3a6351381c6bf170f64f575b236a1e5df7120\
    --form config=@config.yml \
    --form notify=false \
        https://circleci.com/api/v1.1/project/github/abe-nagisa/ecs-grpc/tree/master