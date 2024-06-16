FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

ENV PYTHONPATH /app/src

COPY app/src ./src/

CMD ["python", "src/main/main.py"]
