FROM node:22-bookworm

WORKDIR /app

EXPOSE 4321

CMD ["npm", "run", "dev", "--", "--host"]
