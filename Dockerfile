# FROM continuumio/miniconda
FROM rayproject/ray-ml:latest

#RUN apk update && apk add python3-dev \
#                          gcc \
#                          libc-dev \
#                          libffi-dev

#ENV DEBIAN_FRONTEND=noninteractive
# RUN sudo apt update && apt install libosmesa6-dev libgl1-mesa-glx libglfw3 patchelf

COPY . /MAX/
WORKDIR /MAX

#RUN ls /MAX
#
RUN conda update -n base -c defaults conda
#
RUN conda env create -f environment.yml
#
#RUN conda install -c conda-forge glew
#RUN conda install -c conda-forge mesalib
#RUN conda install -c menpo glfw3

#COPY .mujoco ~/
#
## Make RUN commands use the new environment:
# SHELL ["conda", "run", "--no-capture-output", "-n", "MG", "/bin/bash", "-c"]

# RUN pip install patchelf

# The code to run when container is started:
#ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "MG"]

#RUN jupyter-lab --port=8080
#RUN conda activate MG
# RUN pip install -r requirements.txt

# RUN cp .mujoco /home/ray/

# RUN export LD_LIBRARY_PATH=:/home/ray/.mujoco/mjpro150/bin

