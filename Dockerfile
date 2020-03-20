FROM python:3.7-slim

RUN python -m pip install mlflow==1.17.1 boto3==1.2.25

ENTRYPOINT [ "/usr/local/bin/mlflow" ]