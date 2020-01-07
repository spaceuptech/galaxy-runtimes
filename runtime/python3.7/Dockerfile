FROM python:3.7-alpine
WORKDIR /images
RUN apk --no-cache add unzip
RUN apk --no-cache add curl
ENV URL=http://172.17.0.2:4122
ENV TOKEN=1234
ENV CMD='python3 app.py'
COPY . .
CMD [ "sh", "./run.sh" ]