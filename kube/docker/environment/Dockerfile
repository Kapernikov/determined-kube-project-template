ARG SOURCE=determinedai/environments:cuda-11.1-pytorch-1.9-lightning-1.5-tf-2.4-gpu-5158dec
FROM ${SOURCE}

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
        libgl1 \
        libglib2.0-0 rclone \
        git ffmpeg wget && apt-get clean
ADD requirements.txt /tmp/requirements.txt
RUN python3 -m pip install -r /tmp/requirements.txt \
        && \
    dvc config --global cache.dir /data/cache && \
    dvc config --global cache.type symlink && \
    dvc config --global cache.shared group && \
    dvc config --global core.no_scm true

