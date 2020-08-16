FROM alpine:latest

RUN apk add --no-cache --purge -uU lua5.1 make mercurial \
    && cd /tmp \
    && hg clone http://code.matthewwild.co.uk/squish \
    && cd squish \
    && make install \
    && cp make_squishy /usr/local/bin/make_squishy \
    && chmod +x /usr/local/bin/make_squishy \
    && cd \
    && apk del --purge make mercurial \
    && rm -rf /var/cache/apk/* /tmp/*

CMD [ "/usr/local/bin/squish" ]