#!/bin/sh
DEV_LETTER=$(echo $1 | sed 's/^.*fio//')
DEV_NUMBER=$(echo ${DEV_LETTER} | tr a-z 0-9)
FIO_SERIAL=$(grep SN: /proc/fusion/fct${DEV_NUMBER}/iodrive/board_info | sed 's/^.*SN: *//')
echo "${FIO_SERIAL}"
