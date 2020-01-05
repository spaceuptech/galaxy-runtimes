FROM python:3.7-alpine
WORKDIR /builder
RUN apk --no-cache add build-base zip
RUN apk --no-cache add curl
ENV FILE_PATH=/
ENV URL=http://localhost:4122
ENV TOKEN=1234
ENV META={}
ENV FILE_NAME=artifact
COPY . .
CMD [ "sh", "./run.sh" ]