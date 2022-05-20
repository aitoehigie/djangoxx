# Base image
FROM: python:3.10.4-slim-bullseye

MAINTAINER: Ehigie @pystar Aito

# Set environment variables
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PIP_DISABLE_PIP_VERSION_CHECK 1

# Set work directory
WORKDIR /code

# Install dependencies
COPY ./requirements.txt .
RUN python -m pip install -r requirements.txt

# Copy project
COPY . .
