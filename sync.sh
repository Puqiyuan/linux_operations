#!/bin/bash

while inotifywait -q -e modify /home/pqy7172/Work/coroutine/my/src_dev/t_stack_protect.s >/dev/null; do
    #echo "filename is changed"
    # do whatever else you need to do
    scp /home/pqy7172/Work/coroutine/my/src_dev/t_stack_protect.s root@10.66.250.191:/root/puqiyuan/Work
    ssh root@10.66.250.191 "gcc /root/puqiyuan/Work/t_stack_protect.s -g; mv a.out /root/puqiyuan/Work"
    echo `date "+%D %T"` completed
done
