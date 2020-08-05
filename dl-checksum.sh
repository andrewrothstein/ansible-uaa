#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://github.com/cloudfoundry-incubator/uaa-cli/releases/download

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local dot_exe=$4
    local platform="${os}-${arch}"
    local file=uaa-${platform}-${ver}${dot_exe}
    local url=$MIRROR/${ver}/$file
    local lfile=$DIR/$file

    if [ ! -e $lfile ];
    then
        wget -q -O $lfile $url
    fi

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform `sha256sum $lfile | awk '{print $1}'`
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver darwin amd64
    dl $ver linux amd64
    dl $ver windows amd64 .exe
}

dl_ver ${1:-0.10.0}
