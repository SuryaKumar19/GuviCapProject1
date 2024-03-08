FROM node:latest
WORKDIR /app
COPY . .
RUN npm install -g serve
EXPOSE 3000
CMD ["npx", "serve", "-s", "build"]
