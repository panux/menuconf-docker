FROM panux/package-builder:x86_64

ADD conf.sh conf.sh

CMD ["bash","conf.sh"]
