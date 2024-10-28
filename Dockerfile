FROM tensorflow/tensorflow:2.16.1-gpu-jupyter

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 -y \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir -p slam_dl

WORKDIR /tf/slam_dl/

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8888

CMD ["jupyter", "notebook", "--NotebookApp.default_url=notebooks/SLAM_CNN.ipynb", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--notebook-dir=notebooks/"]
