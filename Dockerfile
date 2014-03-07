from ubuntu:12.04
ENV DEBIAN_FRONTEND noninteractive
RUN echo 'deb http://archive.ubuntu.com/ubuntu precise main universe' > \
    /etc/apt/sources.list; apt-get update
RUN apt-get install -y --no-install-recommends  python2.7
CMD ["/bin/sh", "-c", "python -c 'import sys; print sys.version; print sys.version_info'"]
