#!/usr/bin/env bash

curdir="$(cd $(dirname $0) && pwd)"

template_file_dir="${curdir}/template"
dist_file_dir="${curdir}/dist"

#[OPTION]
#    --help
#    --template=<template_file_path>
#    --dist=<dist_file_path>
#    --KEY=VALUE

cd "${curdir}/.."

echo "${curdir}"

cat <<COMMAND
./tgen \
    --template="${template_file_dir}/sample1.txt" \
    --dist="${dist_file_dir}/sample1_result.txt" \
    --key1=rock \
    --key2=metal
COMMAND

./tgen \
    --template="${template_file_dir}/sample1.txt" \
    --dist="${dist_file_dir}/sample1_result.txt" \
    --key1=rock \
    --key2=metal

echo '=================================================='
echo '---template---'
cat "${template_file_dir}/sample1.txt"
echo '=================================================='
echo '---dist---'
cat "${dist_file_dir}/sample1_result.txt"
echo '=================================================='


echo 'HELP'
./tgen --help

exit 0
