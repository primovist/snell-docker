FROM primovist/alpine-glibc
LABEL maintainer="primovist" \
        org.label-schema.name="snell-server" \
        org.label-schema.version=1.1.0
ENV SNELL_VERSION="1.1.0"
ENV LANG=C.UTF-8
ENV SERVER_PORT 12543
ENV PSK=
ENV OBFS tls
ENV ARGS=
RUN wget --no-check-certificate -O snell.zip https://github.com/surge-networks/snell/releases/download/v${SNELL_VERSION}/snell-server-v${SNELL_VERSION}-linux-amd64.zip && \
    unzip snell.zip && \
    rm -f snell.zip && \
    chmod +x snell-server && \
    mv snell-server /usr/bin/
COPY Entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/Entrypoint.sh
ENTRYPOINT ["Entrypoint.sh"]
