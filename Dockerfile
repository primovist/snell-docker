FROM primovist/alpine-glibc
ARG SNELL_VER=1.1.0
ARG SNELL_URL=https://github.com/surge-networks/snell/releases/download/v$SNELL_VER/snell-server-v$SNELL_VER-linux-amd64.zip
LABEL maintainer="primovist" \
        org.label-schema.name="snell-server" \
        org.label-schema.version=$SNELL_VER
ENV LANG=C.UTF-8
ENV PORT=12543
ENV PSK=
ENV OBFS=tls
COPY Entrypoint.sh /usr/bin/
RUN wget --no-check-certificate -O snell.zip $SNELL_URL&& \
    unzip snell.zip && \
    rm -f snell.zip && \
    chmod +x snell-server && \
    mv snell-server /usr/bin/ && \
    chmod +x /usr/bin/Entrypoint.sh
ENTRYPOINT ["Entrypoint.sh"]
