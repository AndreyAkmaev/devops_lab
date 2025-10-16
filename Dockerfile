FROM python:3

WORKDIR /usr/src/my_app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY my_app/ .

CMD [ "python", "./main.py" ]