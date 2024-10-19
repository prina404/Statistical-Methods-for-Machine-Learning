# Statistical methods for machine learning project

Code and report for the course Statistical Methods for Machine Learning A.A. 23/24.


## Launching the notebook with docker

Build the Docker image: 
```bash
docker build --tag tf_slam:1.16 .
```

Launch it with the command:

```bash
docker run --gpus all --privileged \
    -p 8888:8888 \
    --user "$(id -u):$(id -g)" \
    -v .:/tf/slam_dl/ \
    tf_slam:1.16
```

A jupyter server is started automatically upon launch. To execute the notebook simply connect to the URL shown in the terminal output and open the SLAM_CNN.ipynb file

---
### Hardware requirements
Due to a TensorFlow's memory leak, during the hyperparameter selection loop, models' vRAM allocations aren't freed after the models are destroyed. The notebook should run fine on a GPU with 16GB+ vRAM, whereas on GPUs with 8GB or less the kernel should be restarted after each optimization run.
