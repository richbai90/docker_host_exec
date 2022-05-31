FROM alpine:3.15
ENV PORT 5001
ENV socket "/tmp/relay.sock"
ARG USER_SCRIPT_DIR=user_scripts
COPY ${USER_SCRIPT_DIR} /user_scripts
COPY start.sh start.sh
RUN apk add --no-cache socat && \
    chmod +x start.sh


ENTRYPOINT ["/bin/sh", "-c", "/start.sh"]
# CMD ["ifconfig\n"]