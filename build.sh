#! /bin/bash


script_dir=$(dirname "$(realpath "$0")")
version=$(dpkg-parsechangelog --show-field Version)
url="https://github.com/Kron4ek/Wine-Builds/releases/download/${version}/wine-${version}-amd64.tar.xz"

wget "$url"
tar -xf "wine-${version}-amd64.tar.xz"
mv wine-${version}-amd64/ wine/
mkdir -p wine/usr/
mv wine/{bin,lib,share} wine/usr/