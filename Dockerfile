FROM alpine

ADD conf.sh conf.sh

RUN apk add --no-cache make bash curl ncurses-dev gcc libc-dev perl sed installkernel bash gmp-dev bc linux-headers elfutils-dev

CMD ["bash","conf.sh"]
