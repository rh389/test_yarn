FROM rh389/node-base:latest

RUN mkdir -p ~/app/node_modules

WORKDIR /home/yarnuser/app

ADD . /home/yarnuser/app

USER root
RUN chown -R yarnuser /home/yarnuser
USER yarnuser

RUN ls -la ~/app

RUN cd client && yarn install

CMD bash
