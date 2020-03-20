FROM python:3.7-slim

RUN python -m pip install mlflow==1.7.1 boto3==1.12.25

ENTRYPOINT [ "/usr/local/bin/mlflow" ]