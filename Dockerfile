FROM python:3.7-slim

RUN python -m pip install mlflow==1.7.2 boto3==1.12.25 psycopg2-binary==2.8.4

ENTRYPOINT [ "/usr/local/bin/mlflow" ]