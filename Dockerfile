FROM python:3.11

WORKDIR /app

COPY requirements.txt .

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y  \
  build-essential       \
  libatlas-base-dev     \
  liblapack-dev         \
  libblas-dev           \
  gfortran              \
  && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
