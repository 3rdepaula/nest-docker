FROM node:12

RUN mkdir -p /app && chown -R node:node /app
USER node
WORKDIR /app

COPY --chown=node:node package.json package-lock.json ./
RUN npm install


# WORKDIR /app
# COPY . .
# RUN npm install -g @nestjs/cli
# ENTRYPOINT [ "npm", "run", "start" ]