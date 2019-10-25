FROM python:3.6-slim
COPY ./app.py /deploy/
COPY ./requirements.txt /deploy/
COPY ./model.pkl /deploy/
WORKDIR /deploy/
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "app.py"]