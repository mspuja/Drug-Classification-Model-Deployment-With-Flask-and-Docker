# start by pulling the python image
FROM tiangolo/uwsgi-nginx-flask:python3.8
# copy the requirements file into the image
COPY ./requirements.txt /app/requirements.txt
# switch working directory & install python libs
WORKDIR / app 
RUN pip install -r requirements.txt
# production environment
ENV ENVIRONMENT production
# copy code from current directory
COPY . / app 

