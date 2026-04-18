#!/bin/sh
set -x -e

BASE=llvm-23.0.0-51d823197cb40a57f25d00882546374d460c649e-20260616-023936-x86_64
DIR=prerelease/

cat <<EOF > CHECKSUMS
2db98e98924c7d60cd3c4b605dc9f8c5c3d4357a50338a4cf4a36439ee162305  ${BASE}.tar.gz
EOF

curl -C - -O "https://mirrors.kernel.org/pub/tools/llvm/files/${DIR}${BASE}.tar.gz"
sha256sum -c CHECKSUMS
rm -rf "${BASE}" llvm
tar xf "${BASE}.tar.gz"
mkdir -p /opt
mv "${BASE}" /opt/llvm
rm -f "${BASE}.tar.gz" CHECKSUMS
