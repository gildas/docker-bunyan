FROM node:18-alpine
LABEL org.opencontainers.image.title="bunyan"
LABEL org.opencontainers.image.description="Bunyan is a simple and fast JSON logging library for node.js services"
LABEL org.opencontainers.image.authors="Gildas Cherruel <gildas.cherruel@genesys.com>"
LABEL org.opencontainers.image.version="0.0.2"
LABEL org.opencontainers.image.licenses="MIT"

RUN npm install -g bunyan \
    && npm cache clean --force

USER node

ENTRYPOINT [ "bunyan", "-L", "--color", "--no-pager" ]
CMD [ "-L" ]
