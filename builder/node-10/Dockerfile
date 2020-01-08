FROM node:10-alpine
WORKDIR /builder
RUN apk --no-cache add build-base zip curl
ENV FILE_PATH=/
ENV URL=http://localhost:4122
ENV TOKEN=1234
ENV META={}
COPY . .
CMD [ "sh", "./run.sh" ]