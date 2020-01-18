FROM alpine
WORKDIR /runtime
RUN apk --no-cache add unzip curl
ENV URL=http://localhost:4122
ENV TOKEN=1234
ENV CMD=./app
COPY . .
CMD [ "sh", "./run.sh" ]