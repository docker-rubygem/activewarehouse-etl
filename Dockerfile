FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.0

RUN gem install activewarehouse-etl --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["etl"]
CMD ["--help"]
