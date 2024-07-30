#! /bin/bash
set -x

script_dir=$(dirname "$(realpath "$0")")
version=$(dpkg-parsechangelog --show-field Version)
url="https://github.com/Kron4ek/Wine-Builds/releases/download/${version}/wine-${version}-amd64.tar.xz"

rm -rf "${script_dir}/wine/" "${script_dir}/"wine-*-amd64.tar.xz* "${script_dir}"/wine-*-amd64/
wget "$url"
tar -xf "${script_dir}/wine-${version}-amd64.tar.xz"
mv -v "${script_dir}/wine-${version}-amd64/" "${script_dir}/wine/"
mkdir -vp "${script_dir}/wine/usr/"
mv -v ${script_dir}/wine/{bin,lib,share} ${script_dir}/wine/usr/
