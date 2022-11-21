# start by pulling the python image
FROM python:3.8-alpine

# copy the requirements file into the image
COPY ./requirements.txt /microservices/requirements.txt

# switch working directory
WORKDIR /microservices

# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# copy every content from the local file to the image
COPY . /microservices

# configure the container to run in an executed manner
ENTRYPOINT [ "python" ]

CMD ["main.py"]
