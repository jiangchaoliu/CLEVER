This is a modified version of CLEVER to compute minimal distortion for
arbitrary networks and inputs. For more information of CLEVER, please refer to "ORG_README.md"


USAGE
---------------
The following command (in run_ex.sh) is just an example. It is to compute the minimal distortion of the first 100 (-n) in anet_x.csv (--csvfile) for a fnn model anetx.h5 (--model_name) which must be stored in
the path ./models. The option target_type = 16 means untargeted attack.

```
python3 collect_gradients.py --csvfile rfnn_valid.csv  --data mnist --model_name rfnn_valid --target_type 16 -n 100
sleep 20
python3 clever.py --stored_file rfnn_valid.txt --untargeted ./lipschitz_mat/rfnn_valid
```

Basically, the input images can be parametric without changing any code. But to support more models, please refer to "estimate_gradient_norm.py", the code is straightforward.
