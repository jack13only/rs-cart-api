FROM node:16-alpine
WORKDIR /docker-app
COPY *.json ./
RUN npm ci
COPY . .
RUN npm run build
ENV NODE_ENV production
# USER node
EXPOSE 4000
CMD ["node", "dist/main.js"]