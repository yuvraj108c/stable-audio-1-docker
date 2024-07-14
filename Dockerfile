ARG BASE_IMAGE

FROM $BASE_IMAGE

WORKDIR /workspace/stable-audio-1

RUN apt-get update && apt-get install git wget libsndfile1 ffmpeg -y

# Install dependencies
RUN --mount=type=cache,target=/root/.cache/pip \
    python -m venv ./venv && \
    . ./venv/bin/activate && \
    pip install torch torchvision stable-audio-tools gradio==3.50.2 jupyterlab

COPY models .
COPY --chmod=755 scripts/* ./

CMD ["/workspace/stable-audio-1/start.sh"]
