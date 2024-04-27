FROM nvcr.io/nvidia/pytorch:24.02-py3

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV TERM screen-256color
ENV PYTHONBREAKPOINT=ipdb.set_trace
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV TOKENIZERS_PARALLELISM=false

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 -y

COPY requirements.txt /workspace/requirements.txt
RUN pip install -r requirements.txt

# required for visualizations in the tinygrad course
RUN apt install graphviz -y

# setup dev environment
RUN pip install ansible
RUN ansible-pull -U https://github.com/iamgianluca/ansible.git headless.yml
