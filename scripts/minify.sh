#!/bin/bash

HTML_FILE_DIR_NAME=$PWD/"index.html"
CSS_FILE_DIR_NAME=$PWD/styles/"styles.css"

html-minifier --collapse-whitespace --remove-comments --remove-optional-tags --remove-redundant-attributes --remove-script-type-attributes --remove-tag-whitespace --minify-css true $HTML_FILE_DIR_NAME -o $HTML_FILE_DIR_NAME
echo "[INFO]: $HTML_FILE_DIR_NAME successfully minified!"

cssnano $CSS_FILE_DIR_NAME $CSS_FILE_DIR_NAME
echo "[INFO]: $CSS_FILE_DIR_NAME successfully minified!"
