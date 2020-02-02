This is a modified version of CLEVER to compute minimal distortion for
arbitrary networks and inputs. For more information of CLEVER (e.g., installation),
please refer to "ORG_README.md"


USAGE
---------------


```
python3 collect_gradients.py --csvfile <input csv file>  --data <mnist/cifar> --model_name <model name> --target_type <targeted attack or untargeted> -n <number os inputs>
sleep 20
python3 clever.py --stored_file <file name> --untargeted ./lipschitz_mat/mnist_<model name>/
```


* ```<csvfile>```: the path of the input csv file, we have included all csv files in the paper
* ```<data>```: maxmial possible robustness radius
* ```<domain>```: the abstract domain used for verification
* ```<complete>```: True/False for complete/incomplete verification, default is False
* ```<dataset>```: Mnist/Cifar10 for different datasets
* ```<category>```: the name of the file with input images, the file must be stored in ./tr_verify/data
* ```<startnum/endnum>```: since the file with input images are with many images


The following command (in run_ex.sh) is just an example. It is to compute the minimal distortion of the first 100 (-n) in rcnn6t16_1_valid.csv (--csvfile) for a fnn model rcnn_valid (--model_name) which must be stored in
the path ./models. The option target_type = 16 means untargeted attack.

```
python3 collect_gradients.py --csvfile rcnn6t16_1_valid.csv  --data mnist --model_name rcnn_valid --target_type 16 -n 100
sleep 20
python3 clever.py --stored_file rcnn6t16_1_valid.txt --untargeted ./lipschitz_mat/mnist_rcnn_valid/
```


Basically, the input images can be parametric without changing any code. But to support more models, please refer to "estimate_gradient_norm.py", the code is straightforward.
