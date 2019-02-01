
FROM alpine:3.7

WORKDIR /usr/src/app

COPY . .

RUN apk --no-cache add curl

CMD [ "sh", "./bootstrap.sh" ]