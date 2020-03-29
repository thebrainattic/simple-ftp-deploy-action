#!/bin/sh -l

lftp ftp://$INPUT_FTP_USERNAME:$INPUT_FTP_PASSWORD@$INPUT_FTP_HOST  -e "set ssl:verify-certificate false; mirror --verbose --reverse $([ "$INPUT_DELETE" == true ] && echo "--delete") $INPUT_LOCAL_SOURCE_DIR $INPUT_DIST_TARGET_DIR; exit"

