#!/bin/sh
DEST_DIR=$(dirname $0)
GOOGLE_FONTS_GIT_REPO="$HOME/src/google-fonts"

git -C "$GOOGLE_FONTS_GIT_REPO" pull

rsync -av --delete \
  "$GOOGLE_FONTS_GIT_REPO/ofl/alegreya" \
  "$GOOGLE_FONTS_GIT_REPO/ofl/alegreyasc" \
  "$GOOGLE_FONTS_GIT_REPO/ofl/alegreyasans" \
  "$GOOGLE_FONTS_GIT_REPO/ofl/alegreyasanssc" \
  "$GOOGLE_FONTS_GIT_REPO/ofl/barlowsemicondensed" \
  "$GOOGLE_FONTS_GIT_REPO/ofl/crimsontext" \
  "$GOOGLE_FONTS_GIT_REPO/ofl/gentiumbasic" \
  "$GOOGLE_FONTS_GIT_REPO/ofl/nunito" \
  "$GOOGLE_FONTS_GIT_REPO/ofl/nunitosans" \
  "$GOOGLE_FONTS_GIT_REPO/ofl/oswald" \
  "$GOOGLE_FONTS_GIT_REPO/ofl/overlock" \
  "$GOOGLE_FONTS_GIT_REPO/ofl/quicksand" \
  "$GOOGLE_FONTS_GIT_REPO/apache/roboto" \
  "$GOOGLE_FONTS_GIT_REPO/apache/robotocondensed" \
  "$GOOGLE_FONTS_GIT_REPO/ofl/rubik" \
  "$DEST_DIR/"
