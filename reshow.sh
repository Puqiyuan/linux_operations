#!/bin/bash

while inotifywait -q -e modify /home/pqy7172/Work/coroutine/my/src_dev/t_stack_protect.s >/dev/null; do
    #echo "filename is changed"
    # do whatever else you need to do
    cat /home/pqy7172/Work/coroutine/my/src_dev/t_stack_protect.s -n
    echo
    echo ===========================
    echo
done
