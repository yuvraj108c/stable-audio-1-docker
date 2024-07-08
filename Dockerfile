ARG BASE_IMAGE

FROM $BASE_IMAGE

WORKDIR /workspace/stable-audio-1

RUN apt-get update && apt-get install git wget libsndfile1 -y

# Install dependencies
RUN --mount=type=cache,target=/root/.cache/pip \
    python -m venv ./venv && \
    . ./venv/bin/activate && \
    pip install torch torchvision stable-audio-tools gradio jupyterlab

COPY models .
COPY --chmod=755 scripts/* ./

CMD ["./start.sh"]
