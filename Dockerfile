# syntax=docker/dockerfile:1
# escape=`

FROM python:3.8.13
# Set the working directory
WORKDIR /version
# Copy requirements 
COPY requirements.txt requirements.txt
# Run commands
RUN apt-get update && apt-get install -y git
#RUN pip install --upgrade pip
RUN pip install --use-deprecated=legacy-resolver -r requirements.txt