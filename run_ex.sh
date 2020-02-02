python3 collect_gradients.py --csvfile rfnn3t30_1_valid.csv  --data mnist --model_name rfnnvalid --target_type 16 -n 100
sleep 20
python3 clever.py --stored_file rfnn3t30_1_valid.txt --untargeted ./lipschitz_mat/mnist_rfnnvalid/
sleep 20
python3 collect_gradients.py --csvfile rfnn6t16_1_valid.csv  --data cifar --model_name rcnnvalid --target_type 16 -n 100
sleep 20
python3 clever.py --stored_file rfnn3t30_1_valid.txt --untargeted ./lipschitz_mat/cifar_rcnnvalid/
