# DOCKER-VERSION 0.3.4
FROM ubuntu:12.10

# Install Python Setuptools
RUN apt-get install -y python-setuptools

# Install pip
RUN easy_install pip

# Bundle app source
ADD . /src

# Install app dependencies
RUN cd /src; pip install -r requirements.txt

# Create /var/app
RUN mkdir /var/app

# Expose
EXPOSE  5000

# Run
CMD ["python", "/src/application.py"]
