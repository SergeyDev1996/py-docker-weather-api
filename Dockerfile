FROM python:3.10.4-slim-buster
LABEL maintaner = "serhiy.zhyhadlo@gmail.com"

ENV PYTHONUNBUFFERED 1
WORKDIR app/

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app/main.py"]