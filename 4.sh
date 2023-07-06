#!/bin/sh
find ~ -name "*.html" -type f -print0 | xargs -0 zip html_zip_files.zip
