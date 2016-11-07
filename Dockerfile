FROM node

RUN mkdir -p ~/app/node_modules

WORKDIR /home/foo/app

ADD . /home/foo/app

RUN adduser foo
RUN chown -R foo /home/foo
RUN chown -R foo /usr/local

USER foo

RUN npm install --global yarn



RUN ls -la ~/app

RUN cd client && yarn install

CMD bash
