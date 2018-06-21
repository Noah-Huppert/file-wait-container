FROM alpine:latest

COPY ./wait-file.sh /usr/local/bin

ENTRYPOINT wait-file.sh "$WAIT_FILE_PATH"
