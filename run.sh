for i in {rfnn,rcnn}
do
    for j in  {valid, wrong, fgsm1, fgsm05, cw, hop}
    do
	python3 collect_gradients.py --csvfile ${i}_${j}.csv  --data mnist --model_name ${i}_${j} --target_type 16 -n 100
	sleep 20
	python3 clever.py --stored_file ${i}_${j}.txt --untargeted ./lipschitz_mat/mnist_${i}_${j}/
	sleep 20
     done

done
