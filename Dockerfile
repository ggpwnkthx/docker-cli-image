FROM debian:stable-slim
COPY --from=docker:dind /usr/local/bin/docker /usr/local/bin/
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y curl
RUN curl -o /bin/faq https://github.com/jzelinskie/faq/releases/download/0.0.6/faq-linux-amd64 && chmod +x /bin/faq
