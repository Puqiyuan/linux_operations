while inotifywait -r -e modify,create,delete /home/pqy7172/c_jit_v2_localization; do
    rsync -avz /home/pqy7172/c_jit_v2_localization puqiyuan@10.245.35.249:/home/puqiyuan/
done
