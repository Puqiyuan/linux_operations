while inotifywait -r -e modify,create,delete /home/pqy7172/new3/go1.14.1/src; do
    rsync -avz /home/pqy7172/new3/go1.14.1/src puqiyuan@10.8.11.106:/home/puqiyuan/new3/go1.14.1
done
