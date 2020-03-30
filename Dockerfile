FROM python:3.7-slim

RUN python -m pip install mlflow==1.7.2 boto3==1.12.25 psycopg2-binary==2.8.4

ADD ./s3_artifact_repo_patch.py /s3_artifact_repo.py

RUN mv /s3_artifact_repo.py /usr/local/lib/python3.7/site-packages/mlflow/store/artifact/s3_artifact_repo.py

ENTRYPOINT [ "/usr/local/bin/mlflow" ]