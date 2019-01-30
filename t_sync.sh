while inotifywait -r -e modify,create,delete /home/pqy7172/test; do
    rsync -avz /home/pqy7172/test /home/pqy7172/test1
done
