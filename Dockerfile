FROM debian:stable-slim
COPY --from=docker:dind /usr/local/bin/docker /usr/local/bin/
RUN wget https://github.com/jzelinskie/faq/releases/download/0.0.6/faq-linux-amd64 -O /bin/faq && chmod +x /bin/faq
RUN DEBIAN_FRONTEND=noninteractive apt-get install curl
