FROM node:20-alpine

WORKDIR /app

RUN npm install -g @evolution-api/evolution-api

ENV AUTHENTICATION_API_KEY=baz2026secret
ENV SERVER_PORT=8080
ENV DATABASE_ENABLED=false
ENV REDIS_ENABLED=false
ENV LOG_LEVEL=ERROR

EXPOSE 8080

CMD ["evolution-server"]
