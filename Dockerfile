FROM python:3.9-slim as base
COPY . /app
WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONFAULTHANDLER 1

RUN pip install -r requirements.txt
RUN pip install pipenv

RUN pipenv install flask
RUN pipenv install flask-restplus

CMD [ "pipenv" , "run" , "python" , "./src/main.py" ]
