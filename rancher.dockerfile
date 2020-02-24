FROM rancher/docs:dev

ENV PORT=80
ENV HOSTNAME=0.0.0.0

RUN git clone https://github.com/rancher/docs.git /rancher-docs

RUN ln -s /run/node_modules /rancher-docs/node_modules && \
    sed -i 's/30000/60000/g' /rancher-docs/config.toml

WORKDIR /rancher-docs

ENTRYPOINT hugo serve --bind=0.0.0.0 --port $PORT --baseURL=http://$HOSTNAME:$PORT
