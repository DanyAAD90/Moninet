#!/bin/sh
set -eu
THIS_SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd -P)
set -x

#docker build -t is_worker -f ./Dockerfile ~./app

docker build \
       --progress=plain \
       -t moninet \
       -f "${THIS_SCRIPT_DIR}"/Dockerfile \
       "${THIS_SCRIPT_DIR}"/ ;
#--progress=plain

#folder ktory da nam skrypt THIS
 # Tutaj powinniscie budować obraz:
 # 1. o nazwie "is_worker"
 # 2. na podstawie "./Dockerfile"
 # 3. z build contextem ustawionym na "./app"
