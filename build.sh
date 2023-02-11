#!/usr/bin/bash

ver="Debug"
if [ $# -gt 0 ]; then
  ver=$1
fi

declare -A version_map
version_map["Debug"]="Debug"
version_map["debug"]="Debug"
version_map["d"]="Debug"
version_map["Release"]="Release"
version_map["release"]="Release"
version_map["r"]="Release"

real_ver="${version_map[$ver]}"
opt=""
if [ "${real_ver}" == "Release" ]; then
  opt="-DCMAKE_BUILD_TYPE=Release"
elif [ "${real_ver}" == "Debug" ]; then
  opt="-DCMAKE_BUILD_TYPE=Debug"
else
  echo "unknown version type - $ver, exit"
  exit 0
fi

echo "version is ${real_ver}"
echo "opt is ${opt}"

build_dir=$real_ver
mkdir -p ${build_dir}
cmake -B ${build_dir} -S . ${opt}
cmake --build ${build_dir}


