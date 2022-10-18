FROM nvcr.io/nvidia/pytorch:22.09-py3

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PYTHONBREAKPOINT=ipdb.set_trace
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 -y

# install extra python packages
COPY requirements.txt /workspace/requirements.txt
RUN pip install -r requirements.txt
RUN pip install dvc --ignore-installed ruamel-yaml
RUN CC="cc -mavx2" pip install --no-cache-dir -U --force-reinstall pillow-simd

# verify pillow-simd + libjpegturbo installation
RUN python -c "from PIL import features; print(features.check_feature('libjpeg_turbo'))"
