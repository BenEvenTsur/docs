FROM alpine:latest
RUN apk add git hugo make
RUN git clone https://github.com/kubernetes/website.git /k8s-docs
WORKDIR /k8s-docs
ENTRYPOINT hugo server --bind 0.0.0.0
