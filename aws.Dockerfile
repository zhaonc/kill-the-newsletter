FROM node:latest

WORKDIR /kill-the-newsletter

COPY package*.json ./
RUN npm ci --production
COPY . .

VOLUME /kill-the-newsletter/static/feeds/
VOLUME /kill-the-newsletter/static/alternate/

ENV WEB_PORT=80
ENV EMAIL_PORT=25
ENV BASE_URL=http://newsletter.nelsonzhao.com
ENV EMAIL_DOMAIN=nelsonzhao.com
ENV ISSUE_REPORT=mailto:support@example.com

EXPOSE 80
EXPOSE 25

CMD npm start
