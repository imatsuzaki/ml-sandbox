FROM ubuntu:16.04

WORKDIR /app
RUN apt-get update && \
    apt-get install -y python3-pip python3-dev

COPY requirements.txt /app
RUN pip3 install --upgrade pip --trusted-host pypi.org --trusted-host files.pythonhosted.org && \
    pip3 install --no-cache-dir -r requirements.txt

COPY . /app
CMD ["/bin/bash", "-lc", "python3 main.py"]
