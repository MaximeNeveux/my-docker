FROM python:3.7.4-buster

LABEL maintainer="Maxime NEVEUX <maxime.neveux@telecomnancy.eu>"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install --assume-yes apt-utils

RUN apt-get -y upgrade

RUN mkdir -p /var/local/app; \
    mkdir -p /var/log/snake-basket

RUN python -m venv /var/local/app/.venv

# Upgrade Python tool versions in virtual environment
RUN . /var/local/app/.venv/bin/activate; \
    pip install pip --upgrade; \
    pip install setuptools --upgrade

# Copy application files to /var/local/app
COPY app /var/local/app/
RUN chmod +x /var/local/app/*.sh

# Install dependencies into the application virtual environment
RUN . /var/local/app/.venv/bin/activate; \
    pip install -r /var/local/app/requirements.txt

# Run Python application
CMD /var/local/app/run.sh
