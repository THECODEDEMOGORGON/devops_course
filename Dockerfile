FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install Flask==2.0.2 Werkzeug==2.0.2 PyYAML==5.4.1

EXPOSE 80

ENV NAME World

CMD ["python3", "app.py"]
