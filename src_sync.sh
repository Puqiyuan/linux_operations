while inotifywait -r -e modify,create,delete /home/pqy7172/new5; do
    rsync -avz /home/pqy7172/new5/go1.14.1 puqiyuan@10.8.11.106:/home/puqiyuan/new5
    rsync -avz /home/pqy7172/new5/go1.14.1 deepin@10.2.3.169:/home/deepin/pqy/golang
    rsync -avz /home/pqy7172/new5/go1.14.1 deepin@10.20.31.145:/home/deepin/pqy/golang
    rsync -avz /home/pqy7172/new5/go1.14.1 deepin@10.3.10.34:/home/deepin/puqiyuan/golang
done
