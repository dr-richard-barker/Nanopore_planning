# Base image with Python and required tools
FROM ubuntu:22.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /app

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    python3 python3-pip \
    star salmon nanopolish samtools \
    build-essential wget unzip && \
    apt-get clean

# Install Python packages
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# Add the pipeline script to the container
COPY pipeline.py pipeline.py

# Define the command to run the pipeline
CMD ["python3", "pipeline.py"]
