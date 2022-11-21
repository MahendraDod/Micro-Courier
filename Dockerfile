FROM python:3.8-slim

COPY ./requirements.txt /microservices/requirements.txt

EXPOSE 8501

WORKDIR /microservices

RUN pip install -r requirements.txt

COPY . /microservices

ENTRYPOINT ["streamlit", "run", "main.py", "--server.port=8501", "--server.address=0.0.0.0"]

