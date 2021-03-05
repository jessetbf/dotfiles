#!/usr/bin/env bash 

if ! type vagrant > dev/null; then
vagrant plugin install vagrant-hostsupdater
fi
