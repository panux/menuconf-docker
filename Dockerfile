FROM panux/package-builder:x86_64

ADD conf.sh conf.sh

RUN apk add --no-cache gcc libc-dev perl sed installkernel bash gmp-dev bc linux-headers elfutils-dev

CMD ["bash","conf.sh"]
