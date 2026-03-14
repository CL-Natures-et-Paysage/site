FROM node:22-bookworm

ARG UID=1000
ARG GID=1000

RUN groupadd -f -g ${GID} appgroup && \
    useradd -r -o -u ${UID} -g appgroup -s /bin/bash -d /app appuser

WORKDIR /app

RUN chown -R appuser:appgroup /app

USER appuser

EXPOSE 4321

CMD ["npm", "run", "dev", "--", "--host"]
