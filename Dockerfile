FROM python:3.10-alpine

RUN adduser -D app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . /app
WORKDIR /app

RUN chown -R app: ./
USER app

EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["app.py"]