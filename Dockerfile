FROM node:4.8.0

WORKDIR /app

ADD package.json /app/package.json
RUN npm install

ADD . /app

ENV SERVER_URL https://myorganicapp.herokuapp.com/parse
ENV PUBLIC_SERVER_URL https://myorganicapp.herokuapp.com/parse
ENV APP_NAME OrganicApp
ENV MAILGUN_API_KEY key-77d2d28c61553a681f18dda099aa4f61
ENV MAILGUN_DOMAIN organicapp.com.br
ENV MAILGUN_FROM_ADDRESS 'Organicapp <contato@organicapp.com.br>'
ENV MAILGUN_TO_ADDRESS 'contato@organicapp.com.br'

CMD [ "npm", "start" ]

