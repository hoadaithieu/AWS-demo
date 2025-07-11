#FROM python:3.9-slim-buster
FROM public.ecr.aws/docker/library/python:3.9-slim-buster
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 80
CMD ["python", "app.py"]