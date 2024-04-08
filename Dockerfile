FROM python:3

ENV PYTHONUNBUFFERED=1

WORKDIR /code

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . /code

EXPOSE 8080

CMD ["python3","-u","manage.py","runserver","0.0.0.0:8080"]
