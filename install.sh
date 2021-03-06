#!/usr/bin/env bash

ROOT_UID=0
DEST_DIR=

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/icons"
else
  DEST_DIR="$HOME/.icons/"
  mkdir -p $DEST_DIR
fi

# Remove folder if existing
if [ -d "$DEST_DIR/Radioactive-nord" ]; then
  rm -rf "$DEST_DIR/Radioactive-nord"
fi
if [ -d "$DEST_DIR/Radioactive-white" ]; then
  rm -rf "$DEST_DIR/Radioactive-white"
fi

cp -r Radioactive-nord/ $DEST_DIR/Radioactive-nord
cp -r Radioactive-white/ $DEST_DIR/Radioactive-white

echo "Finished..."

