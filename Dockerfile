FROM alpine:3.6

COPY ./.zshrc /root/.zshrc
COPY ./repositories /etc/apk/repositories

RUN apk upgrade --update && apk --no-cache add \
shadow \
zsh \
&& rm -rf /var/cache/apk/* \
&& rm -rf /tmp/* \
&& chsh -s /bin/zsh

ENV SHELL /usr/bin/zsh

WORKDIR /root
ENTRYPOINT /bin/zsh
