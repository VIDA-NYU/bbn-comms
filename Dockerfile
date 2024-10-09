FROM python:3.9-slim

WORKDIR /src/app

ADD requirements.txt .
RUN pip install -r requirements.txt
ADD . .

ENTRYPOINT ["python3"]
CMD ["main.py", "run"]