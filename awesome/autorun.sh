#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run pidgin
run thunderbird
run pasystray
run nm-applet
