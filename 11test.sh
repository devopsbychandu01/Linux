#!/bin/bash
VERSION=$(git tag --sort=taggedate | tail -1)
echo $VERSION
VERSION_BITS=(${VERSION//./})
VNUM1=${VERSION_BITS[0]}
VNUM2=${VERSION_BITS[1]}
if [ $VNUM2 -le 98 ]
then
VNUM2=$((VNUM2+1))
NEW_TAG="${VNUM1}.${VNUM2}"
echo $NEW_TAG
cat <<EOF >inject.txt
new.tag=$NEW_TAG
EOF
