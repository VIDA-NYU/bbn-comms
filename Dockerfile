FROM python:3.9-slim

WORKDIR /src/app

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

ADD requirements.txt .
RUN pip install -r requirements.txt
ADD . .

ENTRYPOINT ["python3"]
CMD ["main.py", "run"]