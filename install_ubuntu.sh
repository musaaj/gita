#!/bin/bash

echo "unpacking binaries..."

GITA="gita.sh"
BIN_PATH="/usr/local/bin/"

WRAPPER="gita"

if [ "${BIN_PATH}/${WRAPPER}" ]; then
	rm "${BIN_PATH}/${WRAPPER}"
	rm "${BIN_PATH}/${GITA}"

fi

cp "${GITA}" "${BIN_PATH}/${GITA}"
chmod 755 "${BIN_PATH}/${GITA}"
ln -s "${BIN_PATH}/${GITA}" "${BIN_PATH}/${WRAPPER}"
echo "done"
