from alpine:latest
RUN apk add --no-cache py3-pip 
RUN rm /usr/lib/python3.11/EXTERNALLY-MANAGED
RUN pip install --upgrade pip

WORKDIR /app
COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["helloworld.py"]
