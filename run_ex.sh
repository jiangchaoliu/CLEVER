python3 collect_gradients.py --csvfile anet_x.csv  --data mnist --model_name anetx --target_type 16 -n 100
sleep 20
python3 clever.py --stored_file anet_x.txt --untargeted ./lipschitz_mat/mnist_anetx/
sleep 20
python3 collect_gradients.py --csvfile resnet_x.csv  --data cifar --model_name resnet --target_type 16 -n 100
sleep 20
python3 clever.py --stored_file resnet_x.txt --untargeted ./lipschitz_mat/cifar_resnet/
