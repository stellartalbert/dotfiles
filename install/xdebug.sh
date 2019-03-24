#!/bin/bash

XDEBUG=$(find /usr/local -name 'xdebug.so')
EXT="zend_extension=\"$XDEBUG\""

INI=$(find /usr/local/etc -name 'php.ini')

echo $EXT >> $INI
