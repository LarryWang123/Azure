FROM python:3.7-slim
WORKDIR /app
COPY . ./

#RUN apt install -y python3-pip
RUN pip3 install -r requirements.txt 
RUN pip3 install gunicorn 
#EXPOSE 8080
CMD exec gunicorn -b :$PORT main:app
