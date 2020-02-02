python3 collect_gradients.py --csvfile rcnn6t16_1_valid.csv  --data mnist --model_name rcnn_valid --target_type 16 -n 1
sleep 20
python3 clever.py --stored_file rcnn6t16_1_valid.txt --untargeted ./lipschitz_mat/mnist_rcnn_valid/
sleep 20
python3 collect_gradients.py --csvfile rfnn3t30_1_valid.csv  --data mnist --model_name rfnn_valid --target_type 16 -n 1
sleep 20
python3 clever.py --stored_file rfnn3t30_1_valid.txt --untargeted ./lipschitz_mat/mnist_rfnn_valid/
sleep 20
