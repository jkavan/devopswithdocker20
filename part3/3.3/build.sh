#!/bin/sh

if [ -z "$GITHUB_URL" ]; then
  echo "Missing GITHUB_URL"
fi
if [ -z "$USERNAME" ]; then
  echo "Missing USERNAME"
fi
if [ -z "$PASSWORD" ]; then
  echo "Missing PASSWORD"
fi
if [ -z "$PROJECT_NAME" ]; then
  echo "Missing PROJECT_NAME"
fi

git clone $GITHUB_URL project
cd project

docker login -u=$USERNAME -p=$PASSWORD
docker build -t $USERNAME/$PROJECT_NAME .
docker push $USERNAME/$PROJECT_NAME
