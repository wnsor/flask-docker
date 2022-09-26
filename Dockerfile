FROM python:3.11.0rc2-bullseye

# Create app directory
WORKDIR /flask-docker

# Install app dependencies
COPY requirements.txt ./

RUN pip install -r requirements.txt

# Bundle app source
COPY . .

EXPOSE 2375
CMD [ "flask", "run","--host","0.0.0.0","--port","2375"]