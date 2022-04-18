string=$(ps aux -c | head -n 2 | awk '{print $2,$3,$11}')
