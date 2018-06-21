FROM alpine:latest

COPY ./wait-file.sh /usr/local/bin

CMD wait-file.sh "$WAIT_FILE_PATH"
