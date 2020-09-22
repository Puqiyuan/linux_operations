while inotifywait -r -e modify,create,delete /home/pqy7172/new5; do
    rsync -avz /home/pqy7172/new5/go1.14.1 puqiyuan@10.8.11.106:/home/puqiyuan/new5
done
