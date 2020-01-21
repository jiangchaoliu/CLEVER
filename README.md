This is a forked repository from CLEVER to compute minimal distortion for arbitrary networks and inputs. For more information of CLEVER, please refer to "ORG_README.d"

USAGE
---------------
The following command (in run_ex.sh) is just an example. It is to compute the minimal distortion of the first 100 (-n) in anet_x.csv (--csvfile) for a fnn model anetx.h5 (--model_name) which must be stored in
the path ./models. The option target_type = 16 means untargeted attack.

```
python3 collect_gradients.py --csvfile anet_x.csv  --data mnist --model_name anetx --target_type 16 -n 100
sleep 20
python3 clever.py --stored_file anet_x.txt --untargeted ./lipschitz_mat/mnist_anetx/
```

Basically, the input images can be parametric without changing any code. But to support more models, please refer to "estimate_gradient_norm.py", the code is straightforward.
