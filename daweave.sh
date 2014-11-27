#!/bin/sh

if [ ! -d "$3" ]; then
  echo "The output location does not exist."
  exit 1
fi

docker pull $1
sed -e "s/{{target_image}}/$1/g" $2 > $3/Dockerfile
docker build -t "$1.advised" $3
rm $3/Dockerfile
