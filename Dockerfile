FROM klokantech/tileserver-gl
WORKDIR /usr/src
RUN git clone https://github.com/detunized/tile-generation.git && \
    cd tile-generation/tile-fetcher && \
    npm install
COPY gentiles /usr/src/
ENTRYPOINT /usr/src/gentiles $*
