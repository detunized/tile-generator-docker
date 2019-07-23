FROM klokantech/tileserver-gl
WORKDIR /usr/src
RUN git clone https://github.com/detunized/tile-generation.git && \
    cd tile-generation/tile-fetcher && \
    npm install
COPY gentiles /usr/src/
COPY style.json /usr/src/app/node_modules/tileserver-gl-styles/styles/klokantech-basic-no-labels/style.json
ENTRYPOINT /usr/src/gentiles $*
