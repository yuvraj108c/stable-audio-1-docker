<div align="center">

# Docker image for Stable Audio Open 1

[![python](https://img.shields.io/badge/python-3.10-green)](https://www.python.org/downloads/)
[![cuda](https://img.shields.io/badge/cuda-12.4-green)](https://developer.nvidia.com/cuda-downloads)

</div>

## Tags
| Tag    | Description              | Size      |
| ------ | ------------------------ | --------- |
| latest | python 3.10, stable audio 1 | ~ 11.6 GB |

## Ports

| Connect Port | Internal Port | Description |
| ------------ | ------------- | ----------- |
| 7860         | 7860          | Stable Audio Webui  |
| 8888         | 8888          | Jupyter Lab  |

## Running locally
```bash
docker run -d \
  --gpus all \
  -p 7860:7860 \
  -p 8888:8888 \
  yuvraj108c/stable-audio-1:latest
```

## Building the docker image
```bash
git clone https://github.com/yuvraj108c/stable-audio-1-docker
cd stable-audio-1-docker

mkdir models
# download models from https://huggingface.co/stabilityai/stable-audio-open-1.0/tree/main into ./models
# model.safetensors
# model_config.json

# build image
docker-compose build latest
```

## Credits
- https://github.com/Stability-AI/stable-audio-tools
- https://huggingface.co/spaces/hmb/stableaudio-open-1.0