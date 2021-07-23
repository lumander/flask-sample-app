FROM alpine:3.14.0


WORKDIR /app

COPY . .

RUN apk add --no-cache python3 py3-pip && pip3 install -r requirements.txt

CMD ["flask","run","--host=0.0.0.0"]
