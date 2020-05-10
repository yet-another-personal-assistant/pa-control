FROM debian:buster-slim as builder
RUN apt-get update && apt-get install -y build-essential libaio1 libaio-dev libssl-dev git-core
RUN git clone https://gitlab.com/teknopaul/xtomp.git /xtomp
WORKDIR /xtomp
RUN ./configure
RUN make

ADD https://github.com/coord-e/magicpak/releases/latest/download/magicpak-x86_64-unknown-linux-musl /usr/bin/magicpak
RUN chmod +x /usr/bin/magicpak
RUN /usr/bin/magicpak -v /xtomp/objs/xtomp /bundle

FROM busybox
COPY --from=builder /bundle /.
COPY --from=builder /lib/*/libnss* /lib/
RUN mkdir -p /app /var/log/xtomp /var/run/xtomp /etc
COPY --from=builder /xtomp/conf/xtomp.conf /etc
RUN sed -i -e '1i\daemon off;' -e '/^user/ s/xtomp/root/' /etc/xtomp.conf
WORKDIR /app
COPY --from=builder /xtomp/objs/xtomp .
EXPOSE 61613
ENTRYPOINT ["/app/xtomp"]
