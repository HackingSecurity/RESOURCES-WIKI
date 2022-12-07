#!/bin/bash

old_process=$(ps -eo command)

while true; do
    new_process=$(ps -eo command)
    # [] cualquier caracter que este en los corchete
    # "key" cualquier linea que contenga -> con la opcion -v las elimina
    diff  <(echo "$old_process") <(echo "$new_process") | grep "[\<\>]" | grep -v "kworker" | grep -v "ps -eo" | grep -v "/opt/"
    old_process=$new_process
done