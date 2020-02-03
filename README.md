This is a modified version of CLEVER to compute minimal distortion for
arbitrary networks and inputs. The installiation process is described in 
 "ORG_README.md" from CLEVER.


USAGE
---------------

We have provided a script ``run.sh'' to collect all experimental results in the paper. It just calls the following commands in a loop.


```
python3 collect_gradients.py --csvfile <input csv file>  --data <mnist/cifar> --model_name <model name> --target_type <targeted attack or untargeted> -n <number os inputs>
sleep 20
python3 clever.py --stored_file <file name> --untargeted ./lipschitz_mat/mnist_<model name>/
```

* ```<csvfile>```: the path to the input csv file
* ```<data>```: ``cifar'' or ``mnist''
* ```<model_name>```: the name of the network models. Note that, for each model, CLEVER creates a folder
 named ``mnist_<model name>'' to store temporary results and then compute the minimal distortion from them.
 Thus, for each category of inputs, we need a different model name. For instance, for the valid inputs to
 the network model FNN-MNIST, we create a model name ``rfnn_valid'' (even though we only need one model file, stored
 in ./models/). These models must be added with
 the code in "estimate_gradient_norm.py". All models needed in the paper are added in the code.
 But to support more models, please refer to "estimate_gradient_norm.py", the code is straightforward to understand.
* ```<target_type>```: 16 for untargeted attack
* ```<n>```: number of images
* ```<stored_file>```: the name of the file to store the results which are the minimal distortion in L_1, L_2 and L_{oo} norm distance.


An example
```
python3 collect_gradients.py --csvfile rcnn6t16_1_valid.csv  --data mnist --model_name rcnn_valid --target_type 16 -n 100
sleep 20
python3 clever.py --stored_file rcnn6t16_1_valid.txt --untargeted ./lipschitz_mat/mnist_rcnn_valid/
```

It is to compute the minimal distortion of the first 100 (-n) in rfnn3t30_1_valid.csv (--csvfile) for 
the network model FNN-MNIST ``rcnn_valid'' (--model_name, corresponding to model file
``./models/rfnn3t30_1.h5'', see ``estimate_gradient_norm.py''). The option target_type = 16 means untargeted attack.

CAUTION
-------------
The script needs days to finish. To get quick results, you can change the script by modifing <n> from 100 to 1.