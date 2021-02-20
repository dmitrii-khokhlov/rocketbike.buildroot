#!/bin/sh

set -u
set -e

BOARD_DIR="$(dirname $0)"
START_QEMU_SCRIPT=start-qemu.sh

cp "${BOARD_DIR}/${START_QEMU_SCRIPT}" "${BINARIES_DIR}"
chmod +x "${BINARIES_DIR}/${START_QEMU_SCRIPT}"
