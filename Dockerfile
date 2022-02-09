from python:3.10.2-slim-buster

WORKDIR /app
COPY . .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD ["python", "./example.py"]


