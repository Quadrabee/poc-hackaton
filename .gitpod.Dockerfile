FROM gitpod/workspace-full

USER gitpod

RUN bash -lc "gem install webspicy"

USER root

# Install ttyecho
COPY .tutorial/files/ttyecho.c /tmp/
RUN gcc -o /usr/bin/ttyecho /tmp/ttyecho.c

# Install next/previous commands
COPY .tutorial/files/next .tutorial/files/previous /usr/bin/

USER gitpod

COPY .tutorial/files/curlrc /home/gitpod/.curlrc
