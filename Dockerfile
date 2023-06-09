FROM node:18-alpine
     
# Add the following lines
ENV CI=true
ENV GENERATE_SOURCEMAP false
ENV WDS_SOCKET_PORT=0
     
WORKDIR /app
COPY package.json ./
RUN npm install
COPY ./ ./
     
CMD ["npm", "start"]