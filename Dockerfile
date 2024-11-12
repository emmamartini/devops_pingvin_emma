FROM python:3.9

ARG API_KEY

ENV API_KEY=${API_KEY}

WORKDIR /app/

COPY . /app/

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

CMD ["python", "app.py"]