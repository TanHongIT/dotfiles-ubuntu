#!/bin/bash

cd web
bash list.sh
cd ../

echo '####################################################################'
while true; do
    read -p "Do you want to install some packages, programs for PHP web developer? (Y/N)  " yn
    case $yn in
    [Yy]*)
        cd web/php
        bash setup.sh
        cd ../../
        break
        ;;
    [Nn]*) break ;;
    *) echo "Please answer yes or no." ;;
    esac
done

echo '####################################################################'
while true; do
    read -p "Do you want to install some packages, programs for JS web developer? (Y/N)  " yn
    case $yn in
    [Yy]*)
        cd web/js
        bash setup.sh
        cd ../../
        break
        ;;
    [Nn]*) break ;;
    *) echo "Please answer yes or no." ;;
    esac
done