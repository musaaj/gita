#!/bin/bash

echo "unpacking binaries..."

GITA="gita.sh"
BIN_PATH="${HOME}/usr/bin"
WRAPPER="gita"

if [ "${BIN_PATH}/${WRAPPER}" ]; then
	rm "${BIN_PATH}/${WRAPPER}"

fi

cp "${GITA}" "${BIN_PATH}/${GITA}"
chmod 711 "${BIN_PATH}/${GITA}"
ln -s "${BIN_PATH}/${GITA}" "${BIN_PATH}/${WRAPPER}"
echo "done"
