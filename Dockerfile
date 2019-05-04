FROM ruby:2.6.3-alpine3.9

EXPOSE 5678
ENV RACK_ENV production

WORKDIR /app
COPY . /app
RUN /app/setup.sh

CMD [ "bundler", "exec", "rackup", "-o", "0.0.0.0", "-p", "5678", "-E", "${RACK_ENV}" ]
