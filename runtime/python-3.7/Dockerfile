FROM python:3.7-alpine
WORKDIR /runtime
RUN apk --no-cache add unzip curl
ENV URL=http://172.17.0.2:4122
ENV TOKEN=1234
ENV CMD='python3 app.py'
COPY . .
CMD [ "sh", "./run.sh" ]