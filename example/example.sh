#!/usr/bin/env bash

curdir="$(cd $(dirname $0) && pwd)"

template_file_dir="${curdir}/template"
dist_file_dir="${curdir}/dist"

cd "${curdir}/.."

./tgen \
    --template="${template_file_dir}/template.txt" \
    --dist="${dist_file_dir}/result.txt" \
    --greeting="Hello" \
    --target="world"

echo '---template---'
cat "${template_file_dir}/template.txt"
echo '--------------'

echo

echo '-----dist-----'
cat "${dist_file_dir}/result.txt"
echo '--------------'

exit 0
