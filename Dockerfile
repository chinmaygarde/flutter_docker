FROM ubuntu:rolling

# Update dependencies.
RUN apt-get update
RUN apt-get install -y locales
RUN apt-get install -y build-essential
RUN apt-get install -y cmake
RUN apt-get install -y libgles2-mesa-dev
RUN apt-get install -y libsdl2-dev
RUN apt-get install -y ninja-build
RUN apt-get install -y gdb
RUN apt-get install -y git
RUN apt-get install -y man
RUN apt-get install -y ccache
RUN apt-get install -y valgrind

# Fix locale.
RUN rm -rf /var/lib/apt/lists/*
RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

# Fetch and configure gclient.
RUN git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git ${HOME}/depot_tools
RUN echo export PATH="\${PATH}:\${HOME}/depot_tools" >> ${HOME}/.bashrc
